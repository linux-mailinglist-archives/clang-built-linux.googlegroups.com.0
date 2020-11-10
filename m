Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBA6QU76QKGQERY3DKTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id D99482ACA0C
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 02:08:20 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id e26sf2892044otj.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 17:08:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604970499; cv=pass;
        d=google.com; s=arc-20160816;
        b=fqi/WnKNK9xtgJsJ0NutqWEASv1Ckel7InJASh6YnB9vwo+dgYMuOWknzxBAdr53y0
         Rq5Vv2uDggmfqA7Oy3p/c7RE5JPAGALL4ZAecaYcNv+qpZykW4SQ3HRzlJ1APR1SMkco
         EdLVh2Y8T3/fawCtyvkNrUs6pBm/+VMmoCpBHMwSOktQ2et4NrC265vYMK6DRU2AR2HX
         kNQPlzXo+huifASFLBYM3C46LB1qsyPU+kWvzz1/rmpbExikU1jVF+S9tiYoRWaPFSHY
         mulNZU4zWEdDB8LYujVLIKYluczYvxPqGfAbkQKC7N8vvsNkXlcanMmvVvnHFFzNf2yl
         WrHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=EE6v1dhgysZSFfB/ZBKib75ogyHHKvUyVdyF8eFFz5w=;
        b=im224ZRb2VRF/4dir+4niGmMUtfgZ6H7TkBMQpeMyIEGkhQLcuj8M9/6+nk7L2Qf5t
         zNB/MM1gpiy1ttE4WHrTo+6fqgbTbrxqOViERBQg2jjEDAbn4WHpBirQV9aJEOYirokS
         j8/MtUQJHuTLI1NBuZI1LEH+e+lUQf+aV3xVEU/+Lz9c44n5M2FTI3Hx9nitomDSFz/6
         o2bseV+CFFGbgjzLxXNOo1PT0ElWsZ4nsarxADJG5CEvo5njdL/FWBL6X54btTs8xCT0
         Itc+BScvfPYAhMGi9kmb4eyZkx9paTb9nYTJUeVgGlIcL+ue1/kvH2Sk58pruEiIIWiD
         NBtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pUdpifgo;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EE6v1dhgysZSFfB/ZBKib75ogyHHKvUyVdyF8eFFz5w=;
        b=tXBNzw7EBUCovKAB05VWc7WmnXhIpytMDKrw8CNnvP5buoiWlXfEtSUy1ZhYp/J2/+
         UwVKl2p618NrVSF90SSw88PPMQM2xRGWHRYYoZy5/ImhccLhLiQ3PQUEE2NDDkeFLmcs
         QGOD21h4Uo4vcdYrWnKCsyq0v37HBUEjpyElHv5eeuRHLa5qP5t9imy5LHBIo5uDhttQ
         rzM9pAV8A+YXkVFKs8P7Og6MRKItdf6A2BS9InOOAPZi+pCScdVt49+6eY5TazERbx1Y
         YO4lQRewmQcnucsMWeRNCnuD4fAn2Wpdptc1rIBNK5Vfd0RQWcogkBkTrZQIs9GLrQDW
         yIAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EE6v1dhgysZSFfB/ZBKib75ogyHHKvUyVdyF8eFFz5w=;
        b=XJfYNHNLlsd425Vf0u5gg/Trx7epJMYydinwsfgUCCPfbwnGUC+mdjMezhOxHMZDtW
         KEeQpWaajgb2xHzJ2L9WksALDFTgi/oFVqOkbuLqjZO5DSnIqZ6bwsMb83nQSCT0UxgH
         v9x+owOlGTigOknHfGihYH4Q0ZpRFRCQxNaf2ZYDSF7B6uoi/MtQCsBXNJoI3ezLqo8I
         MHBtIs1TJFGZrdEAJDd0hlBv1sFPDW9FgkWFGE7Wu8a0oODDDvZs6Skb9bSXKUr9hluw
         Qcyiah2ELecVhK6zhyy3SEaVWPfNdEbKGn+gwaPrOYEwegvEKpU4Ga2VKlKh4AafpwA0
         vYfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EE6v1dhgysZSFfB/ZBKib75ogyHHKvUyVdyF8eFFz5w=;
        b=dpDQbpGUGgfSWPT18q1/vesEcLNNrbXyltoocdpuQMb7IPPAJUKdXhYtXlckddzo+q
         edWxZQkgiunM/XyrJfBVGSjfUnsEa9Ga8+yITLbNoi5/INFc+Az6tUXcmPPskhuckjZO
         Zd929EiqQboW0eMgsqOWocLjleCmL1K8KI0G7noeQ4ZIREsPXtb67p4xeIrTaGRdVXAT
         Eew0tLpIAs3bMhTTQEv9ThyesgxoOBUiWpO7N86R1s1ORrEfRqwwB0N9YY4rplSEx2Vt
         Ekd49XrfxwKgRIBTpO//UbcfTI70sFL6wDZP+ctuOFSa9JOWGjFaBFm76zBJajIyepq8
         Uy+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lJQpn+/8FEsIQk32XC1KkvTMu/trDPGDYghZlZg6vHDCsaFMo
	RH8ANaB1iW3W8eQrXPTFuj8=
X-Google-Smtp-Source: ABdhPJxmp4Kbc3xc58cv5Yb3mdGVwwNTTu83bC0oEyWu1OzJGoCni7Py02f9WjV3pKj/2iWvdlquAA==
X-Received: by 2002:a9d:46f:: with SMTP id 102mr12685409otc.293.1604970499711;
        Mon, 09 Nov 2020 17:08:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a95:: with SMTP id l21ls2626220otq.4.gmail; Mon, 09 Nov
 2020 17:08:19 -0800 (PST)
X-Received: by 2002:a9d:2902:: with SMTP id d2mr13515644otb.280.1604970499386;
        Mon, 09 Nov 2020 17:08:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604970499; cv=none;
        d=google.com; s=arc-20160816;
        b=lOIjAbx2XtZSYqUgqncmj/wqyFlupG0e0qC5HczQhF6cooO1SwxCqpQ9zL2yEKNqRb
         4tuGf6h4DpynR0K8IUGA2DgXjvJLhAjQeSZL5EAI0A1xoFWJKekihPgVxoIhi1Od/uk+
         eqX2Kqcrn3Tp97HofsEDoxx68gXWg5OUXEd1NCgb4r0OsG6jqpHR9qw66TWGZjQCEpca
         PgzJqBs5pP1IAb7x7PLrityzh4OHEwH1kxq6cAhgrQ5eBWy+TOXcPZtoFAIoaWxvu0CH
         OE5rNoXqCuV9VsJVbCGFy6iySDgM3kjcDUmckkddlJIe5M7XU4A642kam+uOx2XOOeq+
         BP/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jfYrdTPKMZbK96SOWjVC+rX+6K1DHm/KzMlUaGqdCkw=;
        b=fyZwujJMD1dXsMVXl1BAYv/QOQSvPhk/INrNNGrFOu+7Rw2ZY+0jJqZBKJ9miTIsbW
         OyNNIkh/utKbI3WpfPaE8RYD3tkgTV4M+U5MUsRhGbvcqkuE1iKXQvXiuuBDaLsK6WyB
         1v1dgcL6G/dCRKRGkjw3/a/Vt399MOK5Z7RmDKl5Nr/OAqB40q1a4Gw39Yj6anm0GPAr
         xwNysebHm3ps4Ip8PWMQ62fCJaRS3UzYLJdyEKVqa9Yh1JgfRnFaBZZdeuOo6rXdTQiI
         DhR999Kq761NYjy62kN6zEGEFzCIXdHaXJYtGHBT2yDWE1GhD0oECND3138mTQPqBZiz
         AzAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pUdpifgo;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id d22si1111008ooj.1.2020.11.09.17.08.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 17:08:19 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id q5so5793700qkc.12
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 17:08:19 -0800 (PST)
X-Received: by 2002:a37:8c9:: with SMTP id 192mr7524631qki.428.1604970498896;
        Mon, 09 Nov 2020 17:08:18 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id k3sm6774156qtj.84.2020.11.09.17.08.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 17:08:18 -0800 (PST)
Date: Mon, 9 Nov 2020 18:08:16 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Luis Chamberlain <mcgrof@kernel.org>, Kees Cook <keescook@chromium.org>,
	Iurii Zaikin <yzaikin@google.com>, linux-fsdevel@vger.kernel.org,
	Tom Rix <trix@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] sysctl: move local variable in proc_do_large_bitmap() to
 proper scope
Message-ID: <20201110010816.GA2018112@ubuntu-m3-large-x86>
References: <20201109071107.22560-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201109071107.22560-1-lukas.bulwahn@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pUdpifgo;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Nov 09, 2020 at 08:11:07AM +0100, Lukas Bulwahn wrote:
> make clang-analyzer caught my attention with:
> 
>   kernel/sysctl.c:1511:4: warning: Value stored to 'first' is never read \
>   [clang-analyzer-deadcode.DeadStores]
>                           first = 0;
>                           ^
> 
> Commit 9f977fb7ae9d ("sysctl: add proc_do_large_bitmap") introduced
> proc_do_large_bitmap(), where the variable first is only effectively used
> when write is false; when write is true, the variable first is only used in
> a dead assignment.
> 
> So, simply remove this dead assignment and put the variable in local scope.
> 
> As compilers will detect this unneeded assignment and optimize this anyway,
> the resulting object code is identical before and after this change.
> 
> No functional change. No change to object code.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> applies cleanly on v5.10-rc3 and next-20201106
> 
> Luis, Kees, Iurii, please pick this minor non-urgent clean-up patch.
> 
>  kernel/sysctl.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/kernel/sysctl.c b/kernel/sysctl.c
> index ce75c67572b9..cc274a431d91 100644
> --- a/kernel/sysctl.c
> +++ b/kernel/sysctl.c
> @@ -1423,7 +1423,6 @@ int proc_do_large_bitmap(struct ctl_table *table, int write,
>  			 void *buffer, size_t *lenp, loff_t *ppos)
>  {
>  	int err = 0;
> -	bool first = 1;
>  	size_t left = *lenp;
>  	unsigned long bitmap_len = table->maxlen;
>  	unsigned long *bitmap = *(unsigned long **) table->data;
> @@ -1508,12 +1507,12 @@ int proc_do_large_bitmap(struct ctl_table *table, int write,
>  			}
>  
>  			bitmap_set(tmp_bitmap, val_a, val_b - val_a + 1);
> -			first = 0;
>  			proc_skip_char(&p, &left, '\n');
>  		}
>  		left += skipped;
>  	} else {
>  		unsigned long bit_a, bit_b = 0;
> +		bool first = 1;
>  
>  		while (left) {
>  			bit_a = find_next_bit(bitmap, bitmap_len, bit_b);
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201110010816.GA2018112%40ubuntu-m3-large-x86.
