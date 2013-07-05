{*
	variables that are available:
	- {$widgetBlogRecentArticlesFull}: contains an array with all posts, each element contains data about the post
*}

{option:widgetBlogRecentArticlesFull}

			<div class="main-col-12">
				<h2>{$lblRecentArticles|ucfirst}</h2>
			</div>
			{iteration:widgetBlogRecentArticlesFull}
				<article class="main-col-4">
					<div class="inner">
						<header>
							<h3><a href="{$widgetBlogRecentArticlesFull.full_url}" title="{$widgetBlogRecentArticlesFull.title}">{$widgetBlogRecentArticlesFull.title}</a></h3>
							<span class="blogpostinfo">{$msgWrittenBy|ucfirst|sprintf:{$widgetBlogRecentArticlesFull.user_id|usersetting:'nickname'}} {$lblOn} {$widgetBlogRecentArticlesFull.publish_on|date:{$dateFormatLong}:{$LANGUAGE}}</span>
	 					</header>
						<div class="bd">
							<p>{$widgetBlogRecentArticlesFull.introduction|truncate:150}</p>
							<p class="clearfix"><a href="{$widgetBlogRecentArticlesFull.full_url}" title="{$widgetBlogRecentArticlesFull.title}" class="button">Read more</a></p>
						</div>
					</div>
				</article>
			{/iteration:widgetBlogRecentArticlesFull}
{/option:widgetBlogRecentArticlesFull}