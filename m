Return-Path: <clang-built-linux+bncBCS7XUWOUULBBDN56SBAMGQEKEXS7EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 132BF349CF2
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 00:36:47 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id 131sf1245406vkz.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 16:36:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616715406; cv=pass;
        d=google.com; s=arc-20160816;
        b=wo2kR9Fde0JsCU/tmV8Jwj4Sc7WDMrXUlhIytsVyoeAupAIfhVfSvNeNWG5Ld1MrRT
         IMPvKuarqHeWXNAaT0CxJTYiGBF2dOSGyn48fwtkD7omlvpMALtm7V5n1kYtFTlYEefr
         G4CSCi2zebuFbvDgaDOdDW7QbMDVWXhaZhQeWCHnZ/Kk6iS9MFeUB6hWmsIuVbGong/P
         C81rUx/iuyBLrFGeDvPADf53b0zukuyP3R+Cf2EqJzI/8X1Qq+thFQbdsFIkBL2K47QO
         pw8r47fNnlFEmp2yxRpxFMw0Stj5ZXbMN8opE5bMpZUDZYkRBhfq1kpZACmAWcaDUJfn
         JA4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=fBS0DIRe7qK4RfU++xdr/5YW7Vdx+bzcBM5LQVu0F7Q=;
        b=ifp6KOE4J3eZgnwkMrv/cu8WeErRJrKYUBd3m90PurVzYO3Hftfxr0gjosQ+I0XSVf
         rEQlxGZc+u1Fv09loDx3wm+wtO4W6nXj8VXuikeyrpd8s9hMgWAGrGEkI7mIonpw84K4
         oSdYuiPlHGpQ7f78lM5OVugGPRgn4aOivl6WjzWQYGX3oa37XAsxvaoNTz245XIF5ZIv
         VhX19D28AWvhQJdV4uw4o30S11o9tJH0bb/2WTJ8wM7WoPVZEC24yCHT7BAZBw/kxJB6
         OBWqQqGE26DuBgEtTMCDhe8k2rAeW8xjkGrzAO0jZtr06/oJFiQlZOMP43V3Xb1/s39N
         Fajw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YNP3csUt;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=fBS0DIRe7qK4RfU++xdr/5YW7Vdx+bzcBM5LQVu0F7Q=;
        b=JYeKLlobleoEyZOGE9RSsQuDInZTBWP06G0sVvXTknSE5Emepdd6bpPLJtpoyq4Yxg
         kxkN6VKrNzQ+SWRh2Y6p2Bk0YGa2MPMIkeRRwRRWnTin3mmrsqG/7ze9nTwLIyfHcPiD
         aj5oLStGLjDKni1CoTVmOdWwIs7OKded8fnkS/OLXoedaB30jr1UCeotIHLWNTJ5nWYy
         A2e7uViV1fQm9N+/0i0yqKWEXAZ+0qu3Xm2GZ+sNW58b9SFwiI6uzvLy185ao563QpLL
         LmVxo6W+zyzt3oZI06XmOiJlPn5yiW2PhN2TkaWTNM3csc+h4zDQxPI+BtPSpjHnaQZs
         gnbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fBS0DIRe7qK4RfU++xdr/5YW7Vdx+bzcBM5LQVu0F7Q=;
        b=oHnAgH8ThStHDR82ue4ajeOeHnQCa7c2VKEjUzC7/p1ViT+Wk0SLQTYrSy3JqJQGLZ
         ZLhreUvuB55I51ocGZzctIXhNpTKbR/apP+dIpBwmhjI8kCYofOcymjaZuK33GRDZOIZ
         Ke77ob8hp0aDkd+zlhpTmAxrGrsaFgbDh6W6gCCGt2bdTKHxYn/XrinBizbkrtruOH9v
         KlFwGIVc23tDhEBkEbrGqy51K6xLOEZtGSxaVfgJtlojvMx/bwHUZKd5vrrCgzr7z4Ya
         JYrpwvQhXD4pTaMeNLuBDCBKDSneKPk76Nj+qcIdHKtaGON0sbmcCflr9H8AneANtFbo
         uW5g==
X-Gm-Message-State: AOAM530pcYTOkQ+ls/2TQkN9xgrylNczQ3q7t8uAld7rlTuERYzS4AGC
	lD4uey21fGHRI16kpqhhm0Q=
X-Google-Smtp-Source: ABdhPJz6sswHP/AqJ6Kp9bscI7d1B/CiOGjNAkAr3G/squHlbxIwdf5bCp7r3k+oqeY8II/Nfg+FHw==
X-Received: by 2002:a1f:1f4f:: with SMTP id f76mr7139119vkf.19.1616715405891;
        Thu, 25 Mar 2021 16:36:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3917:: with SMTP id b23ls563525uaw.4.gmail; Thu, 25 Mar
 2021 16:36:45 -0700 (PDT)
X-Received: by 2002:ab0:5e5:: with SMTP id e92mr6146161uae.70.1616715405184;
        Thu, 25 Mar 2021 16:36:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616715405; cv=none;
        d=google.com; s=arc-20160816;
        b=k2d6Ytgt133Xa5ZQdDnvOp+cWQM4NyqV5JGy5KSAm0Sns4VHq/R28rxWqBVYOhYlNw
         gehPe81smRNN0tDuCh6xRdr1yDnkCLZql7YUUJELb06jXspk1iV6nxVzIplu0cGlx22Q
         9r1FiReSkrtQznHfKj26GanNFPcolj1bzSDPzYiQ2G8Wjhhe8drUL+7FbUKpc+wMOU5A
         GPAdPaHt88Vq3wBj/MNzf6tWxLqNDBse8vdN+zqSB7gpBQM6w+K9oTvOatOruk8c08GY
         CtN4DJjrZm4QcD84fpPW0LMoUxZ+j6+GpwX0PJXeIBixNOKFBmm4V2u/9MSzOMObkacA
         QVVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8ub3+KaVHR67U2QACzlICSww+btiIMyI8S4cGZM+QbM=;
        b=u3rDUMTvHU5+IkcA/ZeWGPl7dzFkKtXXLen7O5Bt3aytckybQHeSB5FnXuA6VOR/hg
         KqliRH/YtN1IYJE94TNlVm0yNbV6xtyNH0T4gKOuR9KLRLQlyDExkCMthaIjNbAP+JKX
         7WOONsBBTYfASZUgjWJlB+UBBSR/u+txFeH79y+0h95/rYJj3EqVSSHl+x+acRSCPSVb
         G6lhp0i4pwHlqlQ72GyXRBYi6SJ1IdmsuGU83q3U917tgwOUOMBdBj7z9lnZIn5yH137
         SPV+9lujYsgvaxPTSrs5IBq6bLk2yzRZdpAxueheWZbWjcHUp8gBr0SF7NaHBbYJH3Wg
         2EyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YNP3csUt;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id i2si240436vkc.0.2021.03.25.16.36.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Mar 2021 16:36:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Received: by mail-pf1-x435.google.com with SMTP id j25so3658918pfe.2
        for <clang-built-linux@googlegroups.com>; Thu, 25 Mar 2021 16:36:45 -0700 (PDT)
X-Received: by 2002:aa7:942d:0:b029:1f2:cbc6:8491 with SMTP id y13-20020aa7942d0000b02901f2cbc68491mr10125053pfo.53.1616715404666;
        Thu, 25 Mar 2021 16:36:44 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:1532:a374:78cc:c35c])
        by smtp.gmail.com with ESMTPSA id j3sm6263561pjf.36.2021.03.25.16.36.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 16:36:44 -0700 (PDT)
Date: Thu, 25 Mar 2021 16:36:40 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	stable@vger.kernel.org
Subject: Re: [PATCH 1/3] scripts/recordmcount.pl: Fix RISC-V regex for clang
Message-ID: <20210325233640.jzi7uvaohvqwixiu@google.com>
References: <20210325223807.2423265-1-nathan@kernel.org>
 <20210325223807.2423265-2-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210325223807.2423265-2-nathan@kernel.org>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YNP3csUt;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::435
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-03-25, Nathan Chancellor wrote:
>Clang can generate R_RISCV_CALL_PLT relocations to _mcount:
>
>$ llvm-objdump -dr build/riscv/init/main.o | rg mcount
>                000000000000000e:  R_RISCV_CALL_PLT     _mcount
>                000000000000004e:  R_RISCV_CALL_PLT     _mcount
>
>After this, the __start_mcount_loc section is properly generated and
>function tracing still works.
>

R_RISCV_CALL_PLT can replace R_RISCV_CALL in all use cases.
R_RISCV_CALL can/may be deprecated:
https://github.com/ClangBuiltLinux/linux/issues/1331#issuecomment-802468296

Reviewed-by: Fangrui Song <maskray@google.com>


>Cc: stable@vger.kernel.org
>Link: https://github.com/ClangBuiltLinux/linux/issues/1331
>Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>---
> scripts/recordmcount.pl | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/scripts/recordmcount.pl b/scripts/recordmcount.pl
>index 867860ea57da..a36df04cfa09 100755
>--- a/scripts/recordmcount.pl
>+++ b/scripts/recordmcount.pl
>@@ -392,7 +392,7 @@ if ($arch eq "x86_64") {
>     $mcount_regex = "^\\s*([0-9a-fA-F]+):.*\\s_mcount\$";
> } elsif ($arch eq "riscv") {
>     $function_regex = "^([0-9a-fA-F]+)\\s+<([^.0-9][0-9a-zA-Z_\\.]+)>:";
>-    $mcount_regex = "^\\s*([0-9a-fA-F]+):\\sR_RISCV_CALL\\s_mcount\$";
>+    $mcount_regex = "^\\s*([0-9a-fA-F]+):\\sR_RISCV_CALL(_PLT)?\\s_mcount\$";
>     $type = ".quad";
>     $alignment = 2;
> } elsif ($arch eq "nds32") {
>-- 
>2.31.0
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210325223807.2423265-2-nathan%40kernel.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210325233640.jzi7uvaohvqwixiu%40google.com.
