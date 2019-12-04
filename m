Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMWNT7XQKGQE4VG35LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id D668C113064
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Dec 2019 18:02:44 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id x16sf226504pjq.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Dec 2019 09:02:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575478963; cv=pass;
        d=google.com; s=arc-20160816;
        b=nmzi6/J1WMS9SLL9laTRfTW6HOkzgoKDffKgA2fXz8y6LjrZRGb4MpwoyoifpZMB7D
         gChVjXQkYidb/oeGrn5UZclf8X87VxcBxd+ddCyJN9v4PfJV1obrztAWv8esV23AxisW
         x7Rej//zf2CQTldrNI8KlDT73natURONUlrDXDZigOE348+YJrBiAck8c72GWqsE8uK4
         pT7QStUbtXfgqvEAi0GHVzZ1tvPqJABz8cl2HUqXMoHWqRitEF9OwBS7tuPqecXzi2o1
         884yC3KHYcWU7vrJpM6MyLPhUGwrXliIIlzKu4yRLTrrkKLmFzTerB9qX+iu00WkmTrt
         RbiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=D4Sce2FStNC0axsdqjlgjTORMDqmn+iDB+DZMDtPSBw=;
        b=BdQdbDqqBrkClMQpY/b//IKVa04D6biZCqbnWGmku7CPFZWN5NfiVjeStJE7q+C+wQ
         ZqEu2Ysx5da8e6YsppNxpOAHOe8vSQkgLEAcfEiXvqbTrO+nmOpCq8WVkxHV7zsBsWJW
         pJyzSnZjjRl+hkm1fN+239OGY21ljyv8uBIP3xJAyL3zrzxPyr1diE6BV8Y/xzowMx1I
         YMiuC930RWwdyUo0y+/7Rdfx7jWXYNz3mPIZvNlMihZ2VGWVU+MRRYRV0BaI5VhqGy0N
         F5hJEcSyzzv4XLTEsOhpbAJoEVn5nMWlryBTZ9/dvCV1z7lxEeZSAUDB1sVB18X55dPH
         Aa3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QmoH0Uex;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D4Sce2FStNC0axsdqjlgjTORMDqmn+iDB+DZMDtPSBw=;
        b=rTgJAAZ9oDzYL5Wj8rwP8coJUcjlRx9aieamsSAHpw0/R1Kc+ScQEqCR2cjQeg96bn
         St8uLsJucBaBfkpmTwgHg18VbllQqsfS1nJ2g8yyIuixDCl3pyHtf52ET9X+ti3JjQcL
         qxkgcoz5jfEufGi8u6HpmSbhapkcDtiaWXQ2Yk10huwapl6n15bEzuM5aviVrX6WXHD1
         Rsx4R/TLcopcGs85R3RxqihPLdDBvfsUl4RxO3hyRm+e06+lUvsxKxm9+yYlxtYFKLly
         2BdGj+f333WaL9SUtNQvRNm2mXutSr3uDVCEm43egL+nQ/fczpm9WvJcePCwZDEJ8IX6
         5Opg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D4Sce2FStNC0axsdqjlgjTORMDqmn+iDB+DZMDtPSBw=;
        b=FN6lCSYkx7KKy3SgBF17NEL2lA31iTF6Bc+wGDgr9BY2rfQQ0gskR9wIWh1NDQ7vVM
         /fBDjqJL5RCrsurgZGz7Nuvfk6OW/BHnG/P/Vb0tCQVvs8it7guPhe+vuOCEdhBunA9g
         3Gmp1rCm498OZW40IPEtzcmCvWfNlosScpXcohnO6W9Fnld9C/CG5KlK3/Mj9DC9v7gR
         tyBCJu6Y/yiiZmuwNbrDJXDm2f+Os7DZaXnQm+34KDES/dRZ/tKv1no1jNMY25/Qt9WN
         OGKgbsN2jnAggXMWkx1cEB008GJTZv2Hp62QEuP+7WqJQ2wZYJK8VbWxbSy+bQG55cum
         zMBw==
X-Gm-Message-State: APjAAAUI53T+KIso/0iZ/xAdqmsKangCnmMqQi1qV5GM2DbGzQ8ouPs8
	5eGD9r9u9qD4R605FS77yhQ=
X-Google-Smtp-Source: APXvYqydtXC7itM0cq+bZo/OlRa+dW2S+7E4sEY9Qio9KDd0A6CiLdlEnRJEjiRNOrKmKJxBhCwwvg==
X-Received: by 2002:a63:dc41:: with SMTP id f1mr4684339pgj.119.1575478962948;
        Wed, 04 Dec 2019 09:02:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a616:: with SMTP id u22ls5599plq.2.gmail; Wed, 04
 Dec 2019 09:02:42 -0800 (PST)
X-Received: by 2002:a17:902:7c04:: with SMTP id x4mr4470137pll.0.1575478962349;
        Wed, 04 Dec 2019 09:02:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575478962; cv=none;
        d=google.com; s=arc-20160816;
        b=oMtKdwXOc9LiHkesFe4jb4K3eRAEzRbGY7+R+qqkC9aKp+QJiGVsB21qfUeodXC+45
         gfwMX4gv/XffTW6XPiCQNT+L/6lL1KtLYqs+VqVcbphsYlfrBkVCgJOyRq1ap4RUFg0z
         Z7K3cI7R9zcdBPy8Wa+Q7y+20kTZ1xyjHqLClyGeneIy41j81rOnAgP9YoEvH5ilb1bb
         gD8Id+1HwfAi/mAJ/j3HYh0g1Zwv9qt/9UTnGeFbV+ovFJMp6lwxWZiI1HGKO7MJD5t9
         XakIpk6o5ZvMuL2VzovVY4YTm2hqxv9/yhOeOuOCiirCyAp6sil9bzlH7c9gtrtrPBs+
         EU/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Eu3IyJHMQvuKhJZsYp2g7JJil3jVEh0AYfjqL0o1IiE=;
        b=Fkzg9zDHu2euInVfnIeniHBbOL3AjCY2U9edb39R1R4LybLEGf0L4EdBzQVQaJ0Kt+
         Q3g/QzutKhP/gbk+1bygJaOkckITOLonv33aEYyrJwssf11u/EETOZk2fT9QZIAImjR4
         JtyKHuTC/Qhr70XSB4e0rW+IUCrhfKBdTHc6AQKZoaDbE68L6tcW9vsUFUvy3jXm/xJQ
         Mje546Jhe1l4JIvPS0EXxXfgoGtb+yUiJuZPiY24n/t3Y+ClSbyYgGyuzd2HDhPFKsR+
         tyQkHI/FBmbcb9mBlDHMHJ9Cmy8eAJybxMT9WMMLb6qyabC1eQ51iJi2seC1Nt93Faoa
         hKdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QmoH0Uex;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id m11si212296pjb.0.2019.12.04.09.02.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Dec 2019 09:02:42 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id z21so49990pjq.13
        for <clang-built-linux@googlegroups.com>; Wed, 04 Dec 2019 09:02:42 -0800 (PST)
X-Received: by 2002:a17:90a:1f4b:: with SMTP id y11mr4270989pjy.123.1575478961561;
 Wed, 04 Dec 2019 09:02:41 -0800 (PST)
MIME-Version: 1.0
References: <20191204081307.138765-1-pihsun@chromium.org>
In-Reply-To: <20191204081307.138765-1-pihsun@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Dec 2019 09:02:30 -0800
Message-ID: <CAKwvOdnLxXeGYfEL+fgVts3cW71gMsP42mysQYtKse_STUErzQ@mail.gmail.com>
Subject: Re: [PATCH v2] wireless: Use offsetof instead of custom macro.
To: Pi-Hsun Shih <pihsun@chromium.org>
Cc: linux-wireless@vger.kernel.org, Johannes Berg <johannes@sipsolutions.net>, 
	open list <linux-kernel@vger.kernel.org>, 
	"open list:CLANG/LLVM BUILD SUPPORT" <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QmoH0Uex;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Wed, Dec 4, 2019 at 12:13 AM Pi-Hsun Shih <pihsun@chromium.org> wrote:
>
> Use offsetof to calculate offset of a field to take advantage of
> compiler built-in version when possible, and avoid UBSAN warning when
> compiling with Clang:
>
> ==================================================================
> UBSAN: Undefined behaviour in net/wireless/wext-core.c:525:14
> member access within null pointer of type 'struct iw_point'
> CPU: 3 PID: 165 Comm: kworker/u16:3 Tainted: G S      W         4.19.23 #43
> Workqueue: cfg80211 __cfg80211_scan_done [cfg80211]
> Call trace:
>  dump_backtrace+0x0/0x194
>  show_stack+0x20/0x2c
>  __dump_stack+0x20/0x28
>  dump_stack+0x70/0x94
>  ubsan_epilogue+0x14/0x44
>  ubsan_type_mismatch_common+0xf4/0xfc
>  __ubsan_handle_type_mismatch_v1+0x34/0x54
>  wireless_send_event+0x3cc/0x470
>  ___cfg80211_scan_done+0x13c/0x220 [cfg80211]
>  __cfg80211_scan_done+0x28/0x34 [cfg80211]
>  process_one_work+0x170/0x35c
>  worker_thread+0x254/0x380
>  kthread+0x13c/0x158
>  ret_from_fork+0x10/0x18
> ===================================================================
>
> Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
> ---
>
> Change since v1:
>  * Add #include <stddef.h>

Thanks for following up on the feedback.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> ---
>  include/uapi/linux/wireless.h | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/include/uapi/linux/wireless.h b/include/uapi/linux/wireless.h
> index 86eca3208b6b..a2c006a364e0 100644
> --- a/include/uapi/linux/wireless.h
> +++ b/include/uapi/linux/wireless.h
> @@ -74,6 +74,8 @@
>  #include <linux/socket.h>              /* for "struct sockaddr" et al  */
>  #include <linux/if.h>                  /* for IFNAMSIZ and co... */
>
> +#include <stddef.h>                     /* for offsetof */
> +
>  /***************************** VERSION *****************************/
>  /*
>   * This constant is used to know the availability of the wireless
> @@ -1090,8 +1092,7 @@ struct iw_event {
>  /* iw_point events are special. First, the payload (extra data) come at
>   * the end of the event, so they are bigger than IW_EV_POINT_LEN. Second,
>   * we omit the pointer, so start at an offset. */
> -#define IW_EV_POINT_OFF (((char *) &(((struct iw_point *) NULL)->length)) - \
> -                         (char *) NULL)
> +#define IW_EV_POINT_OFF offsetof(struct iw_point, length)
>  #define IW_EV_POINT_LEN        (IW_EV_LCP_LEN + sizeof(struct iw_point) - \
>                          IW_EV_POINT_OFF)
>
>
> base-commit: c5db92909beddadddb705b92d3388ea50b01e1a2
> --
> 2.24.0.393.g34dc348eaf-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191204081307.138765-1-pihsun%40chromium.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnLxXeGYfEL%2BfgVts3cW71gMsP42mysQYtKse_STUErzQ%40mail.gmail.com.
