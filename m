Return-Path: <clang-built-linux+bncBCW5ZHGERMNBBJ6XTP7QKGQEUONBIUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 715D32E2DA2
	for <lists+clang-built-linux@lfdr.de>; Sat, 26 Dec 2020 08:52:09 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id l2sf4169278pgi.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Dec 2020 23:52:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608969128; cv=pass;
        d=google.com; s=arc-20160816;
        b=UTbjcsEwwrcZ6Lr2fBkAE01obn67PfHke026ueAT5gliUEUipJJTzc0vIvVchYfV+1
         7xqI6G+pR88sj9mDDdCN4nd2JT2TFk7uYdTSpmm8DeyIao6jxvzRmBZ9dyHjmiqsfmgv
         Xu7PQ5R4z+R8hEhGKlST8dkUcZcwGzH1zOE/H/0pgetgwlZRAlWpBMs1ae9r1/ZqtYpG
         /pHeDIsfr+uabSAKiyYD3PvmURpxElWQw8Rkfyihz3U3BAYTzyz0MTuTv9XS4jqR1d5u
         kXIE96BFURHC/Pgjcx63b6CquQMCAyMVuPHql0l8rcba3QqVQdCzXIWmG00C4qJfRBWm
         FEgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature
         :dkim-signature;
        bh=hS8f5XfW/yCtw+Qo2sO+kUNyAban60tMnSVRLo/Mxw0=;
        b=l7/LPImhDC/55wemHDEFIRMSZxiHZFdWJeP+pxTBJhD+6sAJoPPmkXLevzW1J0E3HN
         LsCgWX6lB0tmtKcRPY2VdutWjn+Unh0hq8yRniUcUltbwRfezfEO/qHMP/0+zD9SmAZ1
         BrKWdOcleRUyuSNr0CH0+/9QD+j6IkfrZDkdlklK6oy/5KKPNr9ukdI5Vf9bPV0CQaAg
         4vI8g/fBq5MvADhO0+pYhlA14KzSnBL0BlQMTN8IE4qwNcAR9DR1EJz5aJWcEQ4oRTyS
         h3uYWRykM02gKIsKB4p9AUVIEExnHYOFOmKkUcZiOcot2phivFRAN7DlCpPY9tzx17Gw
         F9ZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qTTU8vYR;
       spf=pass (google.com: domain of jmillikin@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=jmillikin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hS8f5XfW/yCtw+Qo2sO+kUNyAban60tMnSVRLo/Mxw0=;
        b=LxnwKAiOGZU2mo4lZ7tCtOlw5gVC6NomKtIPAMGtSDz7IE0RvQgribeJtVQN6VSkuE
         szzL6dKTlyYhW1N4ScjR3Fk3VM8RbB5hNzSI/Tc1EOUmRtSVnhs+O0wrAv+oMfb2kQU9
         gPnf9tZ+MBN5Kxb2GY3Y9ch0j7aipQ2+yDxF+G87rz9738YD6YZteL+uPuE+su/y1vw5
         PkoQSNI40PbMHPFKzGtJd0DT6PM3iXs/R/RQvkATIHsqDFMxkAIqdiARVBupDHdgnpOl
         6L7kO9kL37rj0Paab1AIAO7KkJRcdevHMtuaAZWz/8yiwJr+K1J21etDkvauXlNfsQou
         MHMA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hS8f5XfW/yCtw+Qo2sO+kUNyAban60tMnSVRLo/Mxw0=;
        b=seLb++qgF1JsHI9BD/LG78MzaRqXpvB7fmaHhEJgSjlz1zmoMV2IMZ4nHv0/Hrpw0R
         xPVyLNAxNP/U+II6y/BFWYxp9tV4xwcsyryRMpTBBkXJmT/VF3/rkn8Wrsiubb93EPZv
         XN2Nmg2n2fzaWQaCv5ZDh/hprnThMn5Olo9PewPZ/QR8WvkXmcJoqsZ858eZPNHkCKW/
         x+MXV7hH1M3dsuFCzaqcIgy9VEtDtn7UJy73ms2xh88736cFSa+tW9koIme40JCjN6r3
         MrFu9nuZUM8kYN1EhSJM+v6P/ZTjsZUKsQonDtdeH1yiPOu9G6XZp1QOMblFEuIWc6X1
         zpYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hS8f5XfW/yCtw+Qo2sO+kUNyAban60tMnSVRLo/Mxw0=;
        b=Hyc8MDatjcYQ2jRbdxpqlVKKrEWT4SEleED4Al7Fwt+pJXdtLtXXj8gtpiOynMW7I4
         v/knkRnEAIm9O/D61prI3uHCw4MOwYDgN7p1Us0PCbr0JBcsjV/5zpfyq8k57t+MMhXl
         G8Tb4/vhdH6RRfTR19qTfMMxfsaI9TKDMlvHLQQtG/r/5GO+bvcgJjMrm3uApDp2A8Ws
         xwho9bdYlIFQWTBa9cZAArPhgCxDrMsqwAms51q/YT2ibN2bfxgXx7DJd2TuAefrDfP5
         m8KXtCBeGmdZ96CQb/5G2c4D6d5UjdD/tLucUyaM6+G057LjvlE9FOlAkeSk7eS19JJe
         YTaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315WbEig7uXYym5Ln53y9pgyGU0SomKEKgnDnUZSzsh9RRDGqN5
	HDXzsDrwIrJnUccRbRt1P3o=
X-Google-Smtp-Source: ABdhPJwW2JrmVt2lt0VDMeWI7kmgMPfnab32vJ2gZiFJ1FUpJdMO1mAt6BXEg41oSk5L09k0K9B2gQ==
X-Received: by 2002:a17:902:a388:b029:da:bad:ed3 with SMTP id x8-20020a170902a388b02900da0bad0ed3mr13241720pla.76.1608969127772;
        Fri, 25 Dec 2020 23:52:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ba8b:: with SMTP id k11ls20455154pls.8.gmail; Fri,
 25 Dec 2020 23:52:07 -0800 (PST)
X-Received: by 2002:a17:90a:d148:: with SMTP id t8mr11785072pjw.126.1608969127145;
        Fri, 25 Dec 2020 23:52:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608969127; cv=none;
        d=google.com; s=arc-20160816;
        b=Vyq798ufroy3yLCX/rSTqKWeNg/t7k3C4YBu4hcET5gOVQoR5EL/11NWIIgxZL5yZU
         R3YKBFQmk7L8LpoyxbFTSOpDT1xQnYjJezvoOme1KizsoYwEfTAcozIHcg1WgZIWbDdK
         JrH76SGboY21T75dprGyUBKN8mYXZUAeNVzphAl6JQp1tBPVBPak5rC7FwlgglLPGT2l
         si56gZN1vJetVavpVoAKeuUKKQRkLx4BnxeBCU9I7D6DT648qnosM9GC7YdOwX+Ikyah
         x+LZLssSmcwZLR2JCx6aMiZ3s3NWYwIIz5TuL5p2TyPiLNeSSKFv4FJmfWKLdDh7Qour
         ctAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=iCbGK8pR7Lx+7BhFwDHvHLS7dEP9reTsuL6ZDzX42g4=;
        b=rNyKeehsRptJQgOmQEOzRqd0N5np+0itZylCN1bb1kDm0SLJ+saRgZZO0E6GYdSW2q
         nuMzqqYQIwjTpLHxt1jejVw26B4Hzz8de+FUMwP+1yaMcBOJiQYFucBdIqlFSTOq3LgO
         keAICVCIdwEcnnnKvLGYUPRag3uXmuW+6Q3K6WOitt6uXF+y5Gw3Pu+fJEXxHshM91Pi
         gy/VPPxhzs5U3HE1/rPbCZRU8Cax4aMgV7xyDSkIHrxZFIxR1AsTbOOJqeF37zgV3T5E
         RAhO/ZhamDa9GFEV/aIgk16ykRFDYfvwVf4ZH5OfdWZB2Jkd4v3AC0SmeDJLHaI5X4JF
         ZXOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qTTU8vYR;
       spf=pass (google.com: domain of jmillikin@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=jmillikin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id ce15si491595pjb.3.2020.12.25.23.52.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Dec 2020 23:52:07 -0800 (PST)
Received-SPF: pass (google.com: domain of jmillikin@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id b5so3743383pjl.0
        for <clang-built-linux@googlegroups.com>; Fri, 25 Dec 2020 23:52:07 -0800 (PST)
X-Received: by 2002:a17:90a:3cc6:: with SMTP id k6mr11727910pjd.204.1608969126927;
        Fri, 25 Dec 2020 23:52:06 -0800 (PST)
Received: from macbook.local (ae142046.dynamic.ppp.asahi-net.or.jp. [14.3.142.46])
        by smtp.gmail.com with ESMTPSA id s1sm29753063pfb.103.2020.12.25.23.52.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Dec 2020 23:52:06 -0800 (PST)
Subject: Re: [PATCH] arch/x86: Propagate $(CLANG_FLAGS) to $(REALMODE_FLAGS)
To: hpa@zytor.com, x86@kernel.org, linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 John Millikin <john@john-millikin.com>
References: <cceb074c-861c-d716-5e19-834a8492f245@gmail.com>
 <37DE7046-5096-4C0C-A96D-FD168A849DFD@zytor.com>
From: John Millikin <jmillikin@gmail.com>
Message-ID: <6008226d-3655-df9c-6842-8161de365ff7@gmail.com>
Date: Sat, 26 Dec 2020 16:52:03 +0900
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <37DE7046-5096-4C0C-A96D-FD168A849DFD@zytor.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: jmillikin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qTTU8vYR;       spf=pass
 (google.com: domain of jmillikin@gmail.com designates 2607:f8b0:4864:20::1036
 as permitted sender) smtp.mailfrom=jmillikin@gmail.com;       dmarc=pass
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

On 12/26/20 16:35, hpa@zytor.com wrote:
> Why is CLANG_FLAGS non-null when unused? It would be better to centralize=
 that.
CLANG_FLAGS normally propagates through inclusion in the default KBUILD_CFL=
AGS and KBUILD_AFLAGS, set in `/Makefile':

=C2=A0 =C2=A0 # Makefile
=C2=A0 =C2=A0 KBUILD_CFLAGS +=3D $(CLANG_FLAGS)
=C2=A0 =C2=A0 KBUILD_AFLAGS +=3D $(CLANG_FLAGS)
=C2=A0 =C2=A0 export CLANG_FLAGS

This default can be overridden by explicit assignment, as is done in some o=
f the arch/x86 makefiles:

=C2=A0 =C2=A0 # arch/x86/realmode/rm/Makefile
=C2=A0 =C2=A0 KBUILD_CFLAGS=C2=A0=C2=A0=C2=A0 :=3D $(REALMODE_CFLAGS) -D_SE=
TUP -D_WAKEUP \
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 -I$(srctree)/ar=
ch/x86/boot
=C2=A0 =C2=A0 KBUILD_AFLAGS=C2=A0=C2=A0=C2=A0 :=3D $(KBUILD_CFLAGS) -D__ASS=
EMBLY__
=C2=A0 =C2=A0 KBUILD_CFLAGS=C2=A0=C2=A0=C2=A0 +=3D -fno-asynchronous-unwind=
-tables

Since REALMODE_CFLAGS is being built up from a plain assignment, the Clang =
flags get lost. As a result Clang fails to compile the real-mode code when =
cross-compiling for an x86 target.

=C2=A0 =C2=A0 arch/x86/realmode/rm/header.S:36:1: error: unknown directive
=C2=A0 =C2=A0 .type real_mode_header STT_OBJECT ; .size real_mode_header, .=
-real_mode_header
=C2=A0 =C2=A0 ^
=C2=A0 =C2=A0 arch/x86/realmode/rm/header.S:36:37: error: unknown directive
=C2=A0 =C2=A0 .type real_mode_header STT_OBJECT ; .size real_mode_header, .=
-real_mode_header
=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^
=C2=A0 =C2=A0 arch/x86/realmode/rm/header.S:41:62: error: unknown directive
=C2=A0 =C2=A0 .globl end_signature ; ; end_signature: ; .long 0x65a22c82 ; =
.type end_signature STT_OBJECT ; .size end_signature, .-end_signature
=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^
=C2=A0 =C2=A0 arch/x86/realmode/rm/header.S:41:95: error: unknown directive
=C2=A0 =C2=A0 .globl end_signature ; ; end_signature: ; .long 0x65a22c82 ; =
.type end_signature STT_OBJECT ; .size end_signature, .-end_signature
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^

This patch allows the Clang-specific flags to propagate through the REALMOD=
E_CFLAGS variable set in `arch/x86/Makefile' and consumed by certain arch/x=
86 targets, which fixes cross-compilation of x86 kernels.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/6008226d-3655-df9c-6842-8161de365ff7%40gmail.com.
