Return-Path: <clang-built-linux+bncBCK2XL5R4APRBAXH4H6AKGQEQM2JXZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5666A29C8B1
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 20:22:43 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id s25sf1207771ljo.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 12:22:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603826562; cv=pass;
        d=google.com; s=arc-20160816;
        b=XvgtDidkYPivHfd57ePhKpXpQ0SIS76ed1O/tEU+pPrA/BJbe5chEKNw0bOdy7JTa1
         c79F/Pkm2mDKDDowGlM1kMrqsFfnlGcO+Xo3Z/nS8uT5nubCT6KNGIkEvG8iM+dMxJp8
         8Ff+BOUnFUTzDbpr7hYdNRhSeLqShsSRmw+lDIM8nAR4BCd8+6VYU5iJdAQ0EqFXb0Qj
         E8t4XTahSj9iPGdQIkThvq2s2nEKyOmtC4pFwoPDJip0Lah0oj60/uMNjHldPBxW9Yk2
         QvKcVVY9bqVK4LA2taHDygS4+l8Wf4cpnNBOkdTLe5SE2o4L8I1qF9lDTPtF5LKEGig+
         4dtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=CffbjdXo/wFfmnS+NSRfxO3D1YYG51LiLMfYKJ+9F6U=;
        b=0lbCl8aUx8xKAm5qdIILAZbSKmiqJhWgn9zcEBYb3nhqHzVZvCumW8JmvJipMe1q1U
         AOASZXiqVPoV3LvlgDcirCKomDMbYU9SGTmLkVGUg2BOOQoy1Rl3w/hzOsBrFZWms1pQ
         UzZdCpvHlCub7Ld3zJN8pjccyppxG8SxmMTvV8CgBGhbdxROg/3QGGFbFscOKYX19SGu
         Jmy+SId0t7x1BVPRBYmSra2BwGQGGtUdYx/QqErU5MK+8oZt3eQOLwQW8oyVwJhYEi4c
         BMsKgzmD1o6kegHa+PhD98eXLMeEJ5txP3e2dTAYQcWvlFCJeQ0bYNyI003sDdhoVMWJ
         n93Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=l7T3pkfr;
       spf=pass (google.com: best guess record for domain of batv+aa0a192a1872a4578dd5+6274+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+aa0a192a1872a4578dd5+6274+infradead.org+hch@casper.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CffbjdXo/wFfmnS+NSRfxO3D1YYG51LiLMfYKJ+9F6U=;
        b=BvSTNiMqC312i9tB0bs9QvgQ8oR6sbdc+de6Bu0iUJsygYQohppGIrqlk+s2dIW/lg
         +6df8O5MAv+3TqsYxU1AP5uA8+YDsI4uKknhQYp+BsEFAuskhqfIsFLuZoXlGMLnxKWT
         tO3fdH6tT7KAIZK76tyJvM9iIRNgV40qXfjumLRc7vQjDQC5VA8F0nEt1CiR+Yoxzcnr
         QUWhLFaq/FTXHPRwcYHVu+YvFaBiuFqH8HyNNQCd5nTKqMemdioMbtu54WH2QPlR2YG2
         mjTu0doj/9jkZi4I6wxx4ivXhJYOIppT0OMZ9l64FpG1JUtZo2jXSevqp2b72PQ59z5m
         7ymw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CffbjdXo/wFfmnS+NSRfxO3D1YYG51LiLMfYKJ+9F6U=;
        b=mal/SccL+8d7ITtLBYYY90ihC15IEmVFf3FGhCPlAV+fsENPA9rn0q9xElhN3upgzB
         57Tbdso9t90whLtJavEK6mXAVAY8FlmDAfMjM4U/wZc9K/xEP5vjG8+eYrIxPDH8XxPk
         fsgjfjYRLlolg2R+0EeU6MISbQsuyq9COJCwsX09MMnAUrPJe+Cm+9hNdZU8pXy1Dyzy
         b6gJ87n1vd0T5nPo9MJR47LJpcGjRMLODXgXq7PEhUYns48JbRCYooyT2N7bzA1NNfpo
         7miIFvVNeL+MJT5aoRWtEEdrG9GL1on01OGCrNm8Wt27q98RKKMtc7GwvE4ujaDNci5Z
         nI5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ERzUMn2hm80ZHWZhjGRkXt/88JwG7zNF9gpT4g8Ld3nDbdFd2
	2H0Hf6uKJY3FqRY50Y34zuY=
X-Google-Smtp-Source: ABdhPJxew+CDpKzwQepNarzs2k4zwo9N0YMfMnoV5u6hXXD8xxN+OI3vcTZgg5TvcSNmGpWoPAgNLA==
X-Received: by 2002:a19:350:: with SMTP id 77mr1494356lfd.92.1603826562802;
        Tue, 27 Oct 2020 12:22:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:554:: with SMTP id 81ls1386560lff.1.gmail; Tue, 27 Oct
 2020 12:22:41 -0700 (PDT)
X-Received: by 2002:a19:2346:: with SMTP id j67mr1319200lfj.427.1603826561721;
        Tue, 27 Oct 2020 12:22:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603826561; cv=none;
        d=google.com; s=arc-20160816;
        b=VhaY+0vQGv1kXfBM3nhMRrQnLcTHNuwwgZy90nDOJ5Bw7tn304hqKVpm3eHgqggJNP
         Kc6wWIytQmEYKQiJG/65DP4kiQ64jCn24GZL1RgwC7gm0jFr2bH5LZqx8vdbZX8cEii+
         mbvLKcQH1dqk/0/if9omqwnitjTfjGIoNvLGXrae/e89eWfhkeJTRCBv3rJO+FT7IdUS
         kVJ19yfjKEypPW42pN14PYveb+Lfr3BCo39J+hmHYtzr+tVDp/AIUZX/Ba1Iqwm3kKZI
         xu6tIEN00kun5Ux229yQ1ZQhOquE0rd8S8F/e/iPZHtJgx7NG5BlCTILgUTDik9TY4SX
         Z76Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NzpIIqIcA9kIWM1rNUUZAYccak4Xft/KknnnsnaUpi4=;
        b=uqlqQYoVw80wgi3UomqNO2Pxo+DBj8EqAngYugK8TnqEoYWmpUHNplT375LKuImAV5
         MKGRjOLX5L77gjvKz/0th2AVS1x1B7lOZdaC2kNgzX61s1RTEWqixmB0oaNnWuXSCeUF
         xQSFq99AwCQ4FbkqIq7jD7voX8TUcTplZJCOr1by/mPCNazXOwN1qi8/AaxPXknU+jIk
         xM6n0bkMvP8d5TJBH6nxViq165BZLAnwBCcp7q7PWjnocU5YytUWxCDsQ+TW9bATjP14
         n4lYlAIrJP4uGFXl7MreR8u54WByFfzeKgPtRpT4tyVK44PkEJVaP72DHTR/j7Mpz5z3
         z73A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=l7T3pkfr;
       spf=pass (google.com: best guess record for domain of batv+aa0a192a1872a4578dd5+6274+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+aa0a192a1872a4578dd5+6274+infradead.org+hch@casper.srs.infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id l28si71803lfp.11.2020.10.27.12.22.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 12:22:41 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+aa0a192a1872a4578dd5+6274+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kXUY9-0006DW-WE; Tue, 27 Oct 2020 19:22:30 +0000
Date: Tue, 27 Oct 2020 19:22:29 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Christoph Hellwig <hch@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Tejun Heo <tj@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>, Jan Kara <jack@suse.cz>,
	Amir Goldstein <amir73il@gmail.com>, linux-kernel@vger.kernel.org,
	linux-fsdevel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] seq_file: fix clang warning for NULL pointer
 arithmetic
Message-ID: <20201027192229.GA22829@infradead.org>
References: <20201027145252.3976138-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201027145252.3976138-1-arnd@kernel.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by casper.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=l7T3pkfr;
       spf=pass (google.com: best guess record for domain of
 batv+aa0a192a1872a4578dd5+6274+infradead.org+hch@casper.srs.infradead.org
 designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+aa0a192a1872a4578dd5+6274+infradead.org+hch@casper.srs.infradead.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

> diff --git a/fs/kernfs/file.c b/fs/kernfs/file.c
> index f277d023ebcd..eafeb8bf4fe4 100644
> --- a/fs/kernfs/file.c
> +++ b/fs/kernfs/file.c
> @@ -121,10 +121,10 @@ static void *kernfs_seq_start(struct seq_file *sf, loff_t *ppos)
>  		return next;
>  	} else {
>  		/*
> -		 * The same behavior and code as single_open().  Returns
> -		 * !NULL if pos is at the beginning; otherwise, NULL.
> +		 * The same behavior and code as single_open().  Continues
> +		 * if pos is at the beginning; otherwise, EOF.
>  		 */
> -		return NULL + !*ppos;
> +		return *ppos ? SEQ_OPEN_SINGLE : SEQ_OPEN_EOF;

Why the somewhat obsfucating unary expression instead of a good
old if?

e.g.

		return next;
	}
	if (*ppos)
		retun SEQ_OPEN_SINGLE;
	return NULL;


>  		++*ppos;
> -		return NULL;
> +		return SEQ_OPEN_EOF;

I don't think SEQ_OPEN_EOF is all that useful.  NULL is the documented
end case already.

> diff --git a/include/linux/seq_file.h b/include/linux/seq_file.h
> index 813614d4b71f..26f0758b6551 100644
> --- a/include/linux/seq_file.h
> +++ b/include/linux/seq_file.h
> @@ -37,6 +37,9 @@ struct seq_operations {
>  
>  #define SEQ_SKIP 1
>  
> +#define SEQ_OPEN_EOF	(void *)0
> +#define SEQ_OPEN_SINGLE	(void *)1

I think SEQ_OPEN_SINGLE also wants a comment documenting it.
AFAICS the reason for it is that ->start needs to return something
non-NULL for the seq_file code to make progress, and there is nothing
better for the single_open case.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027192229.GA22829%40infradead.org.
