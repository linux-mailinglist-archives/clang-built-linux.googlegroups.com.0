Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKVHZ37QKGQEKHDMUDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 470B02E9FDE
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Jan 2021 23:16:11 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id j1sf53990450ybj.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 14:16:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609798570; cv=pass;
        d=google.com; s=arc-20160816;
        b=wRtyML1jdpB343bwBxybzj1zVQBjcbm3PGYSrsdTTVjE3Ftn6axyYaBCk/7ZpELlra
         icdnLe0s377fWZ2anofOBlXshpdiFZC05+mU/lFo0Wekw/zSiJ6CCK01euhLuYFxZG/l
         Czvik4otqtq951h+KaAuBzO8/9p/4nlaQyfhGVDyD7kbJ8QWpL3YnajlnYtOAHspu6jr
         duvhE8foRpoaZIlQ3tPaYJmUf57zHZgz5j0er+jFKM33VQrdfPo5MOceXVbxE6G2T+i5
         V+qtdQ11xbFpWul3mttZM3/Phenq5MeSL1StuWVDR1MkR8G1HgLRFHNDo0MlU5yfEv0U
         3u9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=4nNV4wKfe3s21/Vvkd20PK95th5tN4oQ3dyem36K/8E=;
        b=e2Tm8KQhin2dXuF7JQoKTY3KB9hpRsbP/1i7rmOsrTgVTZL35+wnW505HGgyCu+K9Y
         rOnEVv+CStKXb2tZfhlSdLGbGu1ZImNrH090tsbXKeuDkQg1VHGfW4acS/0IAV+x2ZmU
         VlEeZXhSNocgeBFe9N5xzPbCu1oG4pfvlKyDC6LCVohLcrbPD/7Gm0gPO4P3RkwvmJlZ
         pF4IYdUYZ3QlP0Rtgv4SNo3tVFEzHglUoV1MTKItH103hG9cjmS7nhWqr86b2/nfW5jZ
         f/H0nBXxCll04bDGPpnywxVbIoS7uJ4YrU/JOo9XPquKi4bhaEjTry+c3YB1jOIFDphp
         OwNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A8AMn+1U;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82b as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4nNV4wKfe3s21/Vvkd20PK95th5tN4oQ3dyem36K/8E=;
        b=QECtHNGWVmgBgw1tzqRUZ+wzDfuFVRgtxx6jt7rkIUelrgVyjAv2/AE6tKTMocSICC
         76f+0tNgdXcnjuDpPuut/FQJ0VbR9ORIIkJTQvZbZLpSy92+afpCDCTlhAXa5QCOkNR2
         H/fI/7h0RNRK/iMjW98lMkdxt6eQyMiQIqwUVW51eEdCO1bG0VthjMwvhb32kdfrYO3G
         uS6PRtCh1U8esLAcd9mOIwlyexBQtYKvrYHax26nClBtlCfaxMFuDvziOZ5aMVmYMmTD
         f7d43SOLwPb7EHIYoh0r0U1yXXL241vTK+Z+hGWGT6nMSPojE1hX+pjEAQlJFn8T+pUC
         3Ghg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4nNV4wKfe3s21/Vvkd20PK95th5tN4oQ3dyem36K/8E=;
        b=pAw8quGowAFUqYlPoCldzCrCa8RqtaZAxixCLI/3ZjDpOdYwxpU7rxB+UNltWn0CVQ
         UY7NIvXIqZCGjnCoRxIXAdFo+gbwMYQ96sTA3zX30dgy3YsIz92Bwzq4CRkk/KsN9S0R
         R7Lf3x66oDBrfjR7naKNADs8cl9VXozf/L0Zbi18QFKl9CKpY+yK4YZ7PLpFQRIM26Hm
         2Tk9xBLk+bf7wA3ypQ7YeHVmjNzX3DGKDDSv8IuewCpxIhKfR54560fDJsqpvXwGGR1/
         A2+0WXEFJyuV7Pw6BrdW7X6icPgCYod0fffTMmDV7Oan4bdiCqQQP1/yw0tknU2XSjGs
         BVfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4nNV4wKfe3s21/Vvkd20PK95th5tN4oQ3dyem36K/8E=;
        b=Wx0nOS5RjeQ+G/02v9oqlY3qVbMJ9KJzoKWhD1QdQxAAk0ToqLeU9KbJzGR+UxH6yk
         gL4DteU4jc6tMV7YQgcbRC8052ef/BZ9SvRK+4ltu9VIab3KnY1g5x6B/R01h+4vM100
         PYCDqTCGQAPhusQe6xQrUtxen9Qw19VV/c0PC5P0UYkxJpOHhQY9ru5wWvR1JQe916yI
         /soJOI39BQopEbFh/bWpCmFfRTbZny9sZESzb0n2x/GYqoWHnd7zHMOEQSu5Jv5jaaGU
         DkTwwquW+pyz+kjQAuEb8LXMGnJLxXvMo5r/o9PQXHonXM8VCw7DfPe3C4dlq35JrQP2
         HktA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bkODr3UZX0bxQSoDyOEyLtuUGv/dJdUSP6/uERz8o6VCjPrRI
	itdS0eroQP8Q6w7syIXibsg=
X-Google-Smtp-Source: ABdhPJz/VgJEXQG7WUjjFVNzotgw3/ObnNMLfZRugaMjuAqQ9poJkr7JL9P4XuWdg7c8cD8tSs4qKQ==
X-Received: by 2002:a25:9b88:: with SMTP id v8mr48402538ybo.338.1609798570361;
        Mon, 04 Jan 2021 14:16:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:41d6:: with SMTP id o205ls37938867yba.10.gmail; Mon, 04
 Jan 2021 14:16:10 -0800 (PST)
X-Received: by 2002:a25:6990:: with SMTP id e138mr105869515ybc.474.1609798570072;
        Mon, 04 Jan 2021 14:16:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609798570; cv=none;
        d=google.com; s=arc-20160816;
        b=A+YHV950tWdER5pEATDaKaXRE+uWbNgSLHEBLyb8UK4Fh//yaiv0mJ6W8vgGlJ7h87
         t8qEGK07lI9de2EOwSgWYTFg8akIVTb0mxnJl4LkATMqA9LxLNPjdOduFdXK2dF7/Yla
         toPYl3tPV8fNKjl6afmYLrLmY/RNb1VEGqrXvsEpp1IHebwAgXMoBW/p2CGmLSwg1Ehe
         DXi/AwwreJ0awNR2U1VPxuun1Uol1IIEMMU2n+41wj4kq7CLwwRwk9IFtm94HmRAbZ6d
         G6wpOzDikUb+F0VgnGBvxa0HMWJdtRZv/GZ1eYdRqwH5gIzYIKjd8+sTVQiRelaTHnsR
         699g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=G+1MVqQV4yHFgTMLgTDws1RowImJf6XP6VoJRtb5S+E=;
        b=pmTiEQLSZ1pigEyrz15zCt36ucT6rq8x7mb2r5+9joAt1d090DvFe8gFcItF/7rr4I
         1IC0x6yF/aDX/c0qOhctucmzBr+zJaMtYUVKq0yrJ/Mgv1w9KDWV0AfnzUyQhisrCOg9
         MjBH1wEGx8vpepZXH4A05OkYUPQKq3LtbW9z9pRjRcHEGJxVSUgda4idKgJbZUJRvcRe
         92cgsEKdR8PMBVL8vFsHNawrCUlnlWB2sqwy9A3HjleO5FqrxFAG6pClJPpbrQzoMcm+
         LEy1UIb8IPQiQAnPfr9JR6p/p0L9ymQWIpq/kdBPECk9Op/LqcqrlXgQLYSb6juFEwyx
         1aXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A8AMn+1U;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82b as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com. [2607:f8b0:4864:20::82b])
        by gmr-mx.google.com with ESMTPS id e10si5342306ybp.4.2021.01.04.14.16.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 14:16:10 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82b as permitted sender) client-ip=2607:f8b0:4864:20::82b;
Received: by mail-qt1-x82b.google.com with SMTP id y15so19638965qtv.5
        for <clang-built-linux@googlegroups.com>; Mon, 04 Jan 2021 14:16:10 -0800 (PST)
X-Received: by 2002:ac8:6651:: with SMTP id j17mr74509403qtp.176.1609798569734;
        Mon, 04 Jan 2021 14:16:09 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id f134sm37674597qke.23.2021.01.04.14.16.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 14:16:09 -0800 (PST)
Date: Mon, 4 Jan 2021 15:16:07 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: trix@redhat.com
Cc: dwmw2@infradead.org, richard@nod.at, ndesaulniers@google.com,
	linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] jffs2: fix use after free in jffs2_sum_write_data()
Message-ID: <20210104221607.GA1985645@ubuntu-m3-large-x86>
References: <20201230145604.1586486-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201230145604.1586486-1-trix@redhat.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=A8AMn+1U;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::82b as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Dec 30, 2020 at 06:56:04AM -0800, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analysis reports this problem
> 
> fs/jffs2/summary.c:794:31: warning: Use of memory after it is freed
>                 c->summary->sum_list_head = temp->u.next;
>                                             ^~~~~~~~~~~~
> 
> In jffs2_sum_write_data(), in a loop summary data is handles a node at
> a time.  When it has written out the node it is removed the summary list,
> and the node is deleted.  In the corner case when a
> JFFS2_FEATURE_RWCOMPAT_COPY is seen, a call is made to
> jffs2_sum_disable_collecting().  jffs2_sum_disable_collecting() deletes
> the whole list which conflicts with the loop's deleting the list by parts.
> 
> To preserve the old behavior of stopping the write midway, bail out of
> the loop after disabling summary collection.
> 
> Fixes: 6171586a7ae5 ("[JFFS2] Correct handling of JFFS2_FEATURE_RWCOMPAT_COPY nodes.")
> Signed-off-by: Tom Rix <trix@redhat.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  fs/jffs2/summary.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/fs/jffs2/summary.c b/fs/jffs2/summary.c
> index be7c8a6a5748..4fe64519870f 100644
> --- a/fs/jffs2/summary.c
> +++ b/fs/jffs2/summary.c
> @@ -783,6 +783,8 @@ static int jffs2_sum_write_data(struct jffs2_sb_info *c, struct jffs2_eraseblock
>  					dbg_summary("Writing unknown RWCOMPAT_COPY node type %x\n",
>  						    je16_to_cpu(temp->u.nodetype));
>  					jffs2_sum_disable_collecting(c->summary);
> +					/* The above call removes the list, nothing more to do */
> +					goto bail_rwcompat;
>  				} else {
>  					BUG();	/* unknown node in summary information */
>  				}
> @@ -794,6 +796,7 @@ static int jffs2_sum_write_data(struct jffs2_sb_info *c, struct jffs2_eraseblock
>  
>  		c->summary->sum_num--;
>  	}
> + bail_rwcompat:
>  
>  	jffs2_sum_reset_collected(c->summary);
>  
> -- 
> 2.27.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210104221607.GA1985645%40ubuntu-m3-large-x86.
