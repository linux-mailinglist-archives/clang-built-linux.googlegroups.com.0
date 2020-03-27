Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVXO7DZQKGQELT2PWOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBDA195CA7
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 18:26:48 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id k25sf9290827iob.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 10:26:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585330007; cv=pass;
        d=google.com; s=arc-20160816;
        b=DQ9mQrBcQ8ZUhd+BaTt407BJ4p9JGVq3SFt9dyNafs0ZX03UadKuhoyRfCmCv7qEJ+
         tdVCJN8QJYeP9h2eUHlEpDzJaKslM4GnRstS7bYUEp8A/2dRBmbbwvhfqV7I3LZcUp+/
         X3zjLO6xs4OXf3+CrqVMb5NK3FGhFk6kb1yDmwNcT+p/c9L4rbPxB6xupmkw9inrKZ4s
         hkPEw3nOUnwk3SVDLRKfKH20aRDRlXtK3qkY5F6Gxsj5haPtanpmliitm3dzN8URRKeU
         RUQuL7KD+1lW1ht14wnVphBHrUbb7493Z5ntWdezQKPXkHv/S19qpirZyR2auoWh4Z5K
         z2aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wzJiiw3a3hLDnQ5FdjvKUDum+TrSFo9Wsn0PGPAXhb4=;
        b=S6Vyc9OOiftsAMmPaChdhFDAi+luUT6z2k1sgStk5VG0oQAp4RNJSP9cZ+bWcb64o3
         iESDT9abzek2UXInLEBXXqLX4vrTPHH3kcdbeMjX7Ii+4oppmtbibB6vEvrs+ALpTaRB
         MDhPZE8QmFFhFgVS90gnBWS1Q4nlsdUXcleSKiX0mCESSmFWMZ/TKom8BcbkGdm+EpjJ
         w1IiyDgVTkCB3ANfysO8tb+iwUnaP3o91ILWoOJIUV7dKuUA824PDnWO62hDMb839jMa
         ee7c/oOtXSTA9btGdoN4Y4s34+KzRvHrCAdmgMlMyx6kDzpuvEqo8Q5mr4RV7ZDcuw9F
         6S4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hmBCjbTg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wzJiiw3a3hLDnQ5FdjvKUDum+TrSFo9Wsn0PGPAXhb4=;
        b=tWiwQE5OCh1s2GgNaGaV82gXttPkgplY6xhzXnwnyT97Sm47QETMzsgJgbU1dZO4D3
         PkqyP9fd4mrs0k53Yew9Er4ZBPRAuPBtWkoXel4gYaabmctalkgY2cVK0KmOqMSNPlXq
         JTCe0S6JWGmeuGjbGu9yoFp1ZWZvcCp5GlsmERRYb9kIJYoevZsdGWunPEbEhAkTupXZ
         /JXC6VI2Zhotn/sIDFwgHO232+UeregRzpPq4NJsbDd+nrdHaDud035zD1dtoHE8D847
         0H65xZADXDsbd1YKG9vzOsaQHVgTC5tO73s2G2Q/n6PWAMYqk5KxELowbt17eMwhLqwD
         po2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wzJiiw3a3hLDnQ5FdjvKUDum+TrSFo9Wsn0PGPAXhb4=;
        b=Xs4oNC4u7SxDbPDX2peqz/KT/zUyx2FhfovVWypipYemGZd2uNfdWcDLhhRuRgG1iz
         yJbCM1bntLLoRqomqivxahgy8H3nNNwsTFUpWTTXaJOdrUlKWewA9Yr6dPHBRupblv3O
         Fqw1tVwjK2cur5u93Beme7DfrWkOusaCmg5WRj5WBKC7sX99DLqRqNGfw08TPOUWBFo0
         EeRGl1uPIgOjSCIa2N3LnYRlzse8l2knB6hEKqAp1+Fd3YWzR8oL5GjhzLgVJOXpjMSn
         NcLQfwbRmAmoC0ZM2d6vszstHFKGgidnRG3cg9uZD8CvbQgr4ZMkIQra3uu6iluCpG3h
         QEpg==
X-Gm-Message-State: ANhLgQ3OLTbqi5jEjw1oG5R+XtXNWismNp3tns2ag/CWvklipa6EkMfb
	COVv9GQMcrD+gXKtXlm+ylo=
X-Google-Smtp-Source: ADFU+vsrRLXvwmNKv733ZiigLJDSGAFTDUh+BId/S0P+0fXoswtsfogc5EJ3KXLFuwPl1L3pjY7nZg==
X-Received: by 2002:a92:d0c7:: with SMTP id y7mr212394ila.56.1585330007034;
        Fri, 27 Mar 2020 10:26:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:778d:: with SMTP id s135ls2952150ilc.2.gmail; Fri, 27
 Mar 2020 10:26:46 -0700 (PDT)
X-Received: by 2002:a92:79cf:: with SMTP id u198mr175189ilc.23.1585330006614;
        Fri, 27 Mar 2020 10:26:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585330006; cv=none;
        d=google.com; s=arc-20160816;
        b=pRnj6KAGLMMcvnMoyFJLlrk809l0eIAQyysr9ZBXVpfDcuIvhiQav53IcDVM9Gpj3A
         OcuHave9Yh+2GBUw8useUC7/sLPtmeXFzbbzujqVu0FPSpdfscE1ZF4fnCW4Fxy9cqoL
         A3XzGfz3a0moESncjxLQL68CJsN2PsJQpn2XGDhsmI7ZtYkIxawBPIF/smsYPy7sBB5j
         CLt+jXC1H/zqqlqmC74cYcn64pURgveSTjGXOdDgQsP3PQ4bzmsslIi3ieyGnhudAkgd
         eyhgeyIjMWcoGS+JTpqPAnrd+lADQJmFOPXPdxh/ctyeqWj/8m+l0xsuCeWo4umXwhi6
         kSbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=X8ps1N/pYBA7KlC6SJyDXK1HkCeJUluIuEnwRO89GEU=;
        b=mTkUn4cdlzv14KdYIVLlq06aVzqUwgkcAvPpyJpPtX/rxzZy1FB/oCqMMcyJlcmJ2Y
         N9MWVYqsSCjCKRE1DF3+fCVp+6g2T107LF0Fc4QusDDO2ujfOOKf9Em2jGrY0OGSc3bR
         qE3Ibl6SFTsTQFKRjFvdUVhLa6Kze17biP5bpFe34EDHp6vrDImxSDgVTnEd195PVfmX
         Ml88nF4rb/ddA2CmhO9pb1Puot5bZRIGnEdRRbYyii+nBnQGdw8HWCsg5Ghzn+Z7V9RV
         OVOk+UPsmz0GUONwkzzo8i9V94hz6+a5Y8WNXHf6jcqOv1KU/Db2TqaVxStsd/SyjZSv
         xYEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hmBCjbTg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id k88si384912ilg.1.2020.03.27.10.26.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 10:26:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id 142so4870302pgf.11
        for <clang-built-linux@googlegroups.com>; Fri, 27 Mar 2020 10:26:46 -0700 (PDT)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr335809pgb.263.1585330005540;
 Fri, 27 Mar 2020 10:26:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200327171030.30625-1-natechancellor@gmail.com>
In-Reply-To: <20200327171030.30625-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 27 Mar 2020 10:26:34 -0700
Message-ID: <CAKwvOdkHSRZy_BjyWx2sdZ89CwmMaHAJrNf_xmiGQDphrqjEiA@mail.gmail.com>
Subject: Re: [PATCH -next] fanotify: Fix the checks in fanotify_fsid_equal
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Jan Kara <jack@suse.cz>, Amir Goldstein <amir73il@gmail.com>, 
	linux-fsdevel <linux-fsdevel@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hmBCjbTg;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Mar 27, 2020 at 10:10 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> fs/notify/fanotify/fanotify.c:28:23: warning: self-comparison always
> evaluates to true [-Wtautological-compare]
>         return fsid1->val[0] == fsid1->val[0] && fsid2->val[1] == fsid2->val[1];
>                              ^
> fs/notify/fanotify/fanotify.c:28:57: warning: self-comparison always
> evaluates to true [-Wtautological-compare]
>         return fsid1->val[0] == fsid1->val[0] && fsid2->val[1] == fsid2->val[1];
>                                                                ^
> 2 warnings generated.
>
> The intention was clearly to compare val[0] and val[1] in the two
> different fsid structs. Fix it otherwise this function always returns
> true.
>
> Fixes: afc894c784c8 ("fanotify: Store fanotify handles differently")
> Link: https://github.com/ClangBuiltLinux/linux/issues/952
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch. Subtle bugs that are off by one character have
always been hard for me to spot!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  fs/notify/fanotify/fanotify.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/fs/notify/fanotify/fanotify.c b/fs/notify/fanotify/fanotify.c
> index 7a889da1ee12..cb54ecdb3fb9 100644
> --- a/fs/notify/fanotify/fanotify.c
> +++ b/fs/notify/fanotify/fanotify.c
> @@ -25,7 +25,7 @@ static bool fanotify_path_equal(struct path *p1, struct path *p2)
>  static inline bool fanotify_fsid_equal(__kernel_fsid_t *fsid1,
>                                        __kernel_fsid_t *fsid2)
>  {
> -       return fsid1->val[0] == fsid1->val[0] && fsid2->val[1] == fsid2->val[1];
> +       return fsid1->val[0] == fsid2->val[0] && fsid1->val[1] == fsid2->val[1];
>  }
>
>  static bool fanotify_fh_equal(struct fanotify_fh *fh1,
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkHSRZy_BjyWx2sdZ89CwmMaHAJrNf_xmiGQDphrqjEiA%40mail.gmail.com.
