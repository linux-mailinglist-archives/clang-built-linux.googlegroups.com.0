Return-Path: <clang-built-linux+bncBCKJJ7XLVUBBBD5FRSCQMGQEK7Q2HAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8FD386EA9
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 03:04:16 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id m11-20020acad50b0000b02901e9c3439188sf2313345oig.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 18:04:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621299855; cv=pass;
        d=google.com; s=arc-20160816;
        b=awhWj54YzGTAPITDi7Rj2q/oGs+fbvKBKSOACbZnXgWgF3164wu9Ua/nhBU7BtUxyf
         iRJMMGXgSE5kzmQHkmRDPzIkQgfjNanYtXydZWHXjvu6rrWBKbRVl79fH5Qgk+MwxtiH
         2KJ+UebFk2t7PD2ac8F4A/M3TGXNQ74f0i+sW1yLuD4jdYjpv79TDMTho5VCD515Bb4e
         AlAGsrdvWBU7hj/WcoErIm/D+ATyO9vwr8/7tLa+iSLyIOBzB/fRmqaSTbILIxzUI1RV
         c7J3p3jNkoiVVwdsNbprS7plJJYUMXxhTielG3hLKRASD1FX5oacpETbCKJ7juOcY7Hl
         1Btg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=NMFyS6UsjaFN275LNf4zwP0fR+U0yjxei3rLSqiunbY=;
        b=nGgf84iOFQAf3y+3Xq+zKqk/MIuRhlvb5ZZvLYL3rgxZnb3v3+7UMPpuFnd4eAHJxb
         jSzEJflERaIgo81dZTuguAJ5CKLEc6F6EfE3mpBbzlLZPE8OJ3ibGIOTr9M5YWan6HrV
         CyKuPILqN1f1NFXK0GcbmAs2lIWh6wQEbn0GbT1vH8sAs/sKxSZoRcbCz5fTU58lfmMm
         14vy6ffceB9udN9vJBUFmGHJyzX5gOSiW3baeY+80a85Zot3JTLKeIoqGED/bmsqmpnK
         WploP6TDEofjr6mYBqiBGZb0uHb8yfNXMqQLCqVC/Q1MwKdUkqRMXTdoLj3mdT3qnTvA
         XQUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="pjjTe/8l";
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NMFyS6UsjaFN275LNf4zwP0fR+U0yjxei3rLSqiunbY=;
        b=c9micWFu/Zc1b6zW2gCwVCTb3Hnd/TZSUpkuZDm/GhlbeVX9+BdSfvuILqGIJ0Zy9a
         +wwYs9kEuI35Gwv6Ms2gdX94cn3yhTBaEBqKYekPkw/cpcau6VzYR+/El6/TlLxRIklf
         8L+kg/uUz0cN7w8Aded/B7ibaMw+MxXw1ET+mxVoi34YMcCz60UmD74cnxh38WDQoDuR
         y2yuH87X9MWQaYnU2sguyBYjhYn1nR9YG+PfvD7XJCw7Xe1flKl/oM/HWWq9vXiex65U
         q60mbX4GmHW3bcoa3N+F7xbIgQIgiIOk6+Bd/Bu+bJsRuJgucUEfoOOdiKVI8kzsXvMV
         qi2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NMFyS6UsjaFN275LNf4zwP0fR+U0yjxei3rLSqiunbY=;
        b=kUG44D5K5Z8Q/c75tDDNPtVvsL5jfo9fVPv5E1pZI6F09FGc749gGwCIawz6O5u41s
         4plelt/O/2JcaJLaEW3WKp7GsohEnT8SFzqDgL6QNR1kwqXEZ1aX7vOAFB9YtWjcNqQS
         o3+u1IYa/uKTCuOCCjWz71hLGB6PgQRPkCXwdRcGxwsERwjaw7+QFXG6pHnBx1uRPArW
         lfJ1YdRC7ZEoVBUDmmEacPeik695PC6Z6o28QNWPIHYIbm+agQe81oR/qqyplVXDxBf9
         ma7TvV4wxyIu0CTHPqtlWQmIsrwZ64kBnqmvIRyjxsZX+kcRbwkBr2fGcAIJjq8QlNLl
         O+Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NMFyS6UsjaFN275LNf4zwP0fR+U0yjxei3rLSqiunbY=;
        b=h+h5UCxyRLNlaLZZdSfOI7+UzZJusanprevDQ7Jdsfm5bG4DP/pi34PFpBOn37DsVp
         BsnfGNV47aOWmBzuYYMSWTMGqyeviNuFKsODUWvtbQ+o46k36MQ846iu+Vcs3xl49Hr6
         //UuINMgI8WXxeR+qWAyngQM9owJE3fBpoIizyfEMXRG1gv3uu0EoVpQhwSZwdnSkWPs
         S2nTEMkjZx/KTwGWlYBPAdbjqb0enFy17r/GNYa9RBpgR9+Ee3OV94zQ2JgPXiRscoo8
         gA+hS+asamSjWOY20JwtT51aAoxr6q6LUSTh0q+u0WpxG2hY/z8hGGvgVG6IzsHEk1YX
         wihg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YD08vy4XgeiSAVoDpad5jGCW3VXGdbLlkK6Z0qKZSJ8cYs79u
	DF7BCEXR/ft+mimikznag1Q=
X-Google-Smtp-Source: ABdhPJzpsMgKv0WTdW6pfZ5o1YtCuCai9fEKkrD5QNDJ4c5D5pqv737ga9QQ4SgAJA9AGMIl8rrBig==
X-Received: by 2002:aca:4c58:: with SMTP id z85mr2009599oia.46.1621299855268;
        Mon, 17 May 2021 18:04:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6384:: with SMTP id w4ls1456058otk.9.gmail; Mon, 17 May
 2021 18:04:15 -0700 (PDT)
X-Received: by 2002:a05:6830:611:: with SMTP id w17mr1972982oti.225.1621299854933;
        Mon, 17 May 2021 18:04:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621299854; cv=none;
        d=google.com; s=arc-20160816;
        b=rOPhhVb0nWhFz9DX52prIvwjxU4bKamOrPTukjJumi2WAZi5R5u/qSgXX+fXgW5Id/
         g5U83vAw0vnH8AoVAyg8CC5y0NgP0zi3Mf+NsARY9kNMl/gD234SHnkSAqgDAQpipIqE
         CZvrNURTuvvkeYmE43IbpqsWY/ag13/R/rGJOJGaaYim+mgCDWymWHUWHJKQgOih+ePC
         PnSX5yA1USTsdpXn9tc+RQmNWbpHz7Sr2nhRNLiEXcns2P21NZ12GCZU1qhihgASmWen
         uK0XgrSP1qMc5Ilc/fQwWAy5JjSjS1NoSmwzHlkuGlXX/SGS+Asv99PmRQkZcAfr36vM
         izPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HpzCktU8tqQwFPAjSHs1iV7tX6Mou1UQaLNa5S+82WY=;
        b=gW4X1aWTiS5tvLShhGYiWFwM8RmY/YjmqzM1gi0XGVZxMZ/I18aFjBXjUpL5pEyfp+
         9NbZjVmXcqHnBJLqWfwl/bwAdBEIH3DIVwyAgNQV0bxL2Zcvb2UbU6aL/QarTcTCD+aB
         JJqDDTaSJ5jTBpxXiHDhv1w89kYfjHG7uoQvXxeftakeL6KI4H+oDyG+6FCr2xdHeaLS
         crsaHvsHwqOaWl38+I/+O0JuMbKzQUyVo4uwGpmZggAccYklZAPeRz7nATIL8R1SHV8J
         rXvl4jq49xA28X+yiHtOOCk+AOAvpk5QZe+XT43PxGJBLGmmV1td0fScm0y9LzDXgV02
         ghyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="pjjTe/8l";
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id f4si2229664otc.2.2021.05.17.18.04.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 18:04:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id gb21-20020a17090b0615b029015d1a863a91so588725pjb.2
        for <clang-built-linux@googlegroups.com>; Mon, 17 May 2021 18:04:14 -0700 (PDT)
X-Received: by 2002:a17:902:d2c5:b029:f1:c207:b0fd with SMTP id n5-20020a170902d2c5b02900f1c207b0fdmr1478354plc.45.1621299854255;
        Mon, 17 May 2021 18:04:14 -0700 (PDT)
Received: from hyeyoo ([183.99.11.150])
        by smtp.gmail.com with ESMTPSA id r10sm7719180pjm.20.2021.05.17.18.04.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 18:04:14 -0700 (PDT)
Date: Tue, 18 May 2021 10:04:07 +0900
From: Hyeonggon Yoo <42.hyeyoo@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Naresh Kamboju <naresh.kamboju@linaro.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux-Next Mailing List <linux-next@vger.kernel.org>,
	lkft-triage@lists.linaro.org,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Arnd Bergmann <arnd@arndb.de>, Vlastimil Babka <vbabka@suse.cz>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [next] x86_64 defconfig failed with clang-10
Message-ID: <20210518010407.GA83641@hyeyoo>
References: <CA+G9fYvYxqVhUTkertjZjcrUq8LWPnO7qC==Wum3gYCwWF9D6Q@mail.gmail.com>
 <e6ee5c21-a460-b4f7-9d0a-e2711ec16185@kernel.org>
 <CAKwvOd=4wux6NG_6tF6C_xjU0ps+Fh5hfW5a_0U+xcPgL+XJYg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=4wux6NG_6tF6C_xjU0ps+Fh5hfW5a_0U+xcPgL+XJYg@mail.gmail.com>
X-Original-Sender: 42.hyeyoo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="pjjTe/8l";       spf=pass
 (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::1033
 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, May 17, 2021 at 01:39:46PM -0700, Nick Desaulniers wrote:
> If we can make the compile time validation done instead at runtime for
> clang-10, that would be preferable. Then when we drop clang-10
> support, we can revert that.  Looking at the diff, I think we could
> reinstate parts like so:

> +#if CLANG_VERSION <= 100000
> +       if (size <=  64 * 1024 * 1024) return 26;
> +#endif

> +#if CLANG_VERSION <= 10000
> +       ,INIT_KMALLOC_INFO(67108864, 64M)
> +#endif

I see no reason to add those lines. I removed them because kmalloc
isn't written to support 64MB size, and it doesn't depend on clang
version.

am I misunderstanding your patch?

the problem here is clang-10 is mis-understanding constant argument as
non-constant. and the patch that Nathan linked makes compiler do run-time
evaluation when clang version is less than 11.

Thanks,
Hyeonggon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210518010407.GA83641%40hyeyoo.
