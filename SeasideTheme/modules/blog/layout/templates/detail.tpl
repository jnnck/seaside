{*
	variables that are available:
	- {$item}: contains data about the post
	- {$comments}: contains an array with the comments for the post, each element contains data about the comment.
	- {$commentsCount}: contains a variable with the number of comments for this blog post.
	- {$navigation}: contains an array with data for previous and next post
*}
<div id="blogDetail">
	<article class="mod article" itemscope itemtype="http://schema.org/Blog">
		<div class="inner">
			<meta itemprop="interactionCount" content="UserComments:{$commentsCount}">
			<meta itemprop="author" content="{$item.user_id|usersetting:'nickname'}">
			<header class="hd">
				<h2 itemprop="name" class="nomargin">{$item.title}</h2>
				<span class="blogpostinfo2 margin">
						{* Written by *}
						{$msgWrittenBy|ucfirst|sprintf:{$item.user_id|usersetting:'nickname'}}

						{* Written on *}
						{$lblOn} <time itemprop="datePublished" datetime="{$item.publish_on|date:'Y-m-d\TH:i:s'}">{$item.publish_on|date:{$dateFormatLong}:{$LANGUAGE}}</time>
				</span>
						{* Tags *}
						{option:item.tags}
							{$lblWith} {$lblThe} {$lblTags}
							<span itemprop="keywords">
								{iteration:item.tags}
									<a href="{$item.tags.full_url}" rel="tag" title="{$item.tags.name}">{$item.tags.name}</a>{option:!item.tags.last}, {/option:!item.tags.last}{option:item.tags.last}.{/option:item.tags.last}
								{/iteration:item.tags}
							</span>
						{/option:item.tags}

			</header>
			<div class="bd content" itemprop="articleBody">
				{option:item.image}<img src="{$FRONTEND_FILES_URL}/blog/images/source/{$item.image}" alt="{$item.title}" itemprop="image" />{/option:item.image}
				{$item.text}
			</div>
			<footer class="ft margin">
				
					{option:navigation.previous}

							<a href="{$navigation.previous.url}" rel="prev" class="left">{$lblPreviousArticle|ucfirst}</a>

					{/option:navigation.previous}
					{option:navigation.next}

							<a href="{$navigation.next.url}" rel="next" class="right">{$lblNextArticle|ucfirst}</a>

					{/option:navigation.next}

			</footer>
		</div>
	</article>

	<div class="social margin">
						<a href="https://www.facebook.com/sharer/sharer.php?u={$SELF}" target="_blank" class="socialbutton socialPopup"><span class="icon-facebook"></span></a>
						<a href="https://twitter.com/intent/tweet?&text={$item.title}&url={$SELF}" class="socialbutton socialPopup"><span class="icon-twitter"></span></a>
						<a href="https://plus.google.com/share?url={$SELF}" class="socialPopup socialbutton"><span class="icon-google-plus"></span></a>
					</div>

	{option:comments}
		{option:item.allow_comments}
			<section id="blogComments" class="mod" itemscope itemtype="http://schema.org/Article">
				<div class="inner">
					<header class="hd">
						<h3 id="{$actComments}">{$lblComments|ucfirst}</h3>
					</header>
					<div class="bd content">
						{iteration:comments}

							{* Do not alter the id! It is used as an anchor *}
							<div id="comment-{$comments.id}" class="comment" itemprop="comment" itemscope itemtype="http://schema.org/UserComments">
								<meta itemprop="discusses" content="{$item.title}" />
								<div class="imageHolder ">
									{option:comments.website}<a href="{$comments.website}">{/option:comments.website}
										<img src="{$FRONTEND_CORE_URL}/layout/images/default_author_avatar.gif" width="48" height="48" alt="{$comments.author}" class="replaceWithGravatar" data-gravatar-id="{$comments.gravatar_id}" />
									{option:comments.website}</a>{/option:comments.website}
								</div>
								<div class="commentContent">
									<div class="commentInfo">
									<p class="commentAuthor" itemscope itemtype="http://schema.org/Person">
										{option:comments.website}<a href="{$comments.website}" itemprop="url">{/option:comments.website}
											<span itemprop="creator name">{$comments.author}</span>
										{option:comments.website}</a>{/option:comments.website}
										<br/>
										<time itemprop="commentTime" datetime="{$comments.created_on|date:'Y-m-d\TH:i:s'}">{$comments.created_on|timeago}</time>
									</p>
									</div>
									<div class="commentText content" itemprop="commentText">
										{$comments.text|cleanupplaintext}
									</div>
								</div>
							</div>
						{/iteration:comments}
					</div>
				</div>
			</section>
		{/option:item.allow_comments}
	{/option:comments}
	{option:item.allow_comments}
		<section id="blogCommentForm" class="mod">
			<div class="inner">
				<header class="hd">
					<h3 id="{$actComment}">{$msgComment|ucfirst}</h3>
				</header>
				<div class="bd">
					{option:commentIsInModeration}<div class="message warning"><p>{$msgBlogCommentInModeration}</p></div>{/option:commentIsInModeration}
					{option:commentIsSpam}<div class="message error"><p>{$msgBlogCommentIsSpam}</p></div>{/option:commentIsSpam}
					{option:commentIsAdded}<div class="message success"><p>{$msgBlogCommentIsAdded}</p></div>{/option:commentIsAdded}
					{form:commentsForm}
						<div class="row">
							<div class="comment-col-6">
								<p {option:txtAuthorError}class="errorArea"{/option:txtAuthorError}>
								<label for="author">{$lblName|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
								{$txtAuthor} {$txtAuthorError}
							</p>
							</div>
							<div class="comment-col-6">
								<p {option:txtEmailError}class="errorArea"{/option:txtEmailError}>
								<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
								{$txtEmail} {$txtEmailError}
							</p>
							</div>
						</div>
						<div class="alignBlocks">
							
							
						</div>
						<p class="bigInput{option:txtWebsiteError} errorArea{/option:txtWebsiteError}">
							<label for="website">{$lblWebsite|ucfirst}</label>
							{$txtWebsite} {$txtWebsiteError}
						</p>
						<p class="bigInput{option:txtMessageError} errorArea{/option:txtMessageError}">
							<label for="message">{$lblMessage|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
							{$txtMessage} {$txtMessageError}
						</p>
						<p>
							<input class="inputSubmit" type="submit" name="comment" value="{$msgComment|ucfirst}" />
						</p>
					{/form:commentsForm}
				</div>
			</div>
		</section>
	{/option:item.allow_comments}
</div>