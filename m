Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIXYW7VQKGQEAFLTW3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFBAA60B8
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Sep 2019 07:37:38 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id j10sf9827070wrb.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Sep 2019 22:37:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567489058; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ih0i4SPjckH47q2vgUQpmmObvUqrwiQImyMRpI1NVxw9sMkN1I2L7lvNt49XAGKRy3
         DOnzdbL87jRTlfRnQZ1R0bz9OEGV9YiAcYk5RYkFPqe5/itUrkAj6XXrKZmugrHvAbQV
         ZKpOxHhl6CLXxJIHmAyM+Zko0c9VtGnSVlCjKPxJuWSEXHt4aPyBmUyarXuyuVCmV2dz
         TfBcwmhW+l5C4A9xOsmApE9Zwkdjn5LN6luLwnNyIgjfrHmlkVOhfUqwaM92AzmHHaCV
         1hRGf4klUt8fVJ0P98OI1+5MlLqqV6C2WJIk23aN+Nbn0fQSaZoPnnnGbm37cQFVI8Kn
         tuxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=qucB3txSYKgRC7R4bJ4ibemxdfwALibo0TPsyWQMstM=;
        b=JYrA4fDG0jCBxSluLPDabcy2zxnJ5GYLWCUA8VQ3942D+7uxHI45b18IXwRhNqO2iP
         +Q11th4JHvsNdDx/aNgWLPM/u+Kkbz15IGqgpLJt58VVeCmOwNxREe4NpEjRkSD8pAWk
         df3wS7xLMT7dg3wt9z5BqAg4eLicBLGydDJMxaTgkC9CcLeDOfBO1b9Qe5t3l0ytNRZ5
         4J0JpX0pANNz/q7otCUcN4A8/HGKSCpedrqr0WokCwUWE5fihdHT/suE6E5iXIrXJ6sF
         rYNwK7hwcrwUylkp39d8MH8Nf0LMtUkcUnOVTcb6NKmZZUnXfOMekCMMNyos0QJH4eJK
         isNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZHTJjC9m;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qucB3txSYKgRC7R4bJ4ibemxdfwALibo0TPsyWQMstM=;
        b=HEkEO7x9GwuK6c1+U0fRzq8tf7Ea8MAXSlUxiyf1gC1hbd4vawMj+6EPpC5EBU4Ou5
         JDADQaCbi1VHOZdjrmkUpWM7fFeIgFIDluGL5q2FU/GDIPRKn0GzaMg8A5XSCrJCVE8U
         u8RHR3d+/B6aIAy7T6Tt6lrTbiX79DSv2fRYWdxvlkCZNqeLYx+XP8MerHfw89bIvYLL
         2A3O6+1rfo1wAZVj+uhz3OWk9GK8ydRdpDx48AKbz39u8TpzVaUmgKbl2JL/D6AOP90c
         PmOrn7HREg5auhRYzYVQrNTMJrR3iRzSsjOQqIWQJkeU3pGSUxVoAUWMGForctJbXII/
         YEHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qucB3txSYKgRC7R4bJ4ibemxdfwALibo0TPsyWQMstM=;
        b=amD6oKXwMmtNnmXojk0AkusElRE9+kEWJxCTpw3PRxYWO33f3NEV3YKbhs1gkn2B+r
         lbBn5Ghyjx9H7AjjhVVBoD0kIrcGRSJvMzVTgKRZTNRaIPOlIjFHZ5glV16xFLnGicxb
         2XCt8WWzfdOugggYAoHXjc9qLtruDLdJVq+9HZi6w/6F8H1kjsIWskUXIyFRjOAf6KbJ
         40SvYbK7YVw5YlPiQrB2UtskqcDw0UMzLi+TSELvmn1M7xnpX+p0ZALovRymzbqryyj+
         2E/Ol+QOSidS6soStChe3RW81f4/q/g/fPzUx2tid3DcqRToJAvPlmDCr71AYE40VrLB
         W0IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qucB3txSYKgRC7R4bJ4ibemxdfwALibo0TPsyWQMstM=;
        b=n3HzlNZ/P4nxdMvvfph2A7edahlY6TIP2u5Zg3durPNfIatRPkcrxV6M5jNcBEeV5T
         18FaPJR1nyJGye8P7dBWpTlrQwuFJviyW0rFokYRmEVQyQ8YnCJA2cq+DEEItJbdpbqA
         no88HPd3LfqOPzHbbXePkoX9mOhUYLnvv8EA4+1Fej+86UQMtwW5sz5alW/EZyTcs2mR
         nGLgeF6brusV4RTq6pyWjF7vQr/adKWrIT5Z+4fD9Nnz5WtjexUazkd/QSvvT7uFXkua
         ixZtBPL1RBhAfsJzNov+AchtffGqVt41gPsg+gSpuYAqE7B5sxDoIERN61EXnVK/Gkz8
         2Z7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUMUXxsihka7v1COvLFGJvDSE3e7SOea/Sdb+9cSuvoCv5cXJ2U
	X+3Bwtup85LXJ8/lmL7E634=
X-Google-Smtp-Source: APXvYqxtCUeoJJn5b6h7stehEAKN1CmYJm/peAJxQjltRfUciNVgr6qO6kSQG5vsmchHi9uoyABa/g==
X-Received: by 2002:adf:c5cc:: with SMTP id v12mr11026315wrg.149.1567489058634;
        Mon, 02 Sep 2019 22:37:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a745:: with SMTP id e5ls4572109wrd.5.gmail; Mon, 02 Sep
 2019 22:37:38 -0700 (PDT)
X-Received: by 2002:adf:eec5:: with SMTP id a5mr40312249wrp.352.1567489058174;
        Mon, 02 Sep 2019 22:37:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567489058; cv=none;
        d=google.com; s=arc-20160816;
        b=IeE250KlmhumwDiFGPogjBVDoUuXCJ4TCFOzj77W2mCscCQn9EooBHrruh+9r/+4T/
         0tsxTA9rjeaOhIUodZcSxsEkhEbGroP+I7E1/WP4wLwHkApIlynUqKFoGMOPpT/aHB64
         Wp2STbGikPAwyJ5T7exZDXgUwCu3P0z6kdeWg93QRzoXrhlvw3M714/HPLRLNF/Kiwha
         7vjAH8LDeidGheOk/RW5EJUUbPyxEXLVXOobZVAiTV8XvGn6oDJTIv2gB0cHS+Nm8EAM
         D+Sugf/UMdnJFMYac23JgqYaMwlyF190Ko88sB5b5Dn/hFHgFYI1YrITZxRe9/XiSnaL
         VhQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dHZB7av9ACZZKXwGXky8ptXmiuaPwp7UFQYgxLaFadk=;
        b=XG22DNHPpnXB8AJVfIQMogCD+/QIHFI6bNYe+FfP+om6Mjm7QL6F5F/8EDPO5vJRAs
         AS3lTgtvRamhvA+tPUVDp7xVD8yQmr6obtC7O14BWi0rU8TIyT3/Gl0/1YMg0JxzEZ0I
         W15f0ImDoSkKzPbnoJ4X7r/WuDNZ3RFt5QHQuC7uNQ4Hmb99NOZVajsScQa8uQUFwbyt
         GKYCOKY97TGn8w0FOjpY4DhbTirz0/aGVo8UquAMY8ojiZGf0rkN/UaFsm0AQMH6/KOm
         mMfHe7hq1Gj009BFN79sSdJwzyjvlXOKYixMoEJWgpj09EmKBEVSjGbApUKxWoN5JRPL
         ob2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZHTJjC9m;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id a14si364029wru.1.2019.09.02.22.37.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Sep 2019 22:37:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id q19so7752798wmc.3
        for <clang-built-linux@googlegroups.com>; Mon, 02 Sep 2019 22:37:38 -0700 (PDT)
X-Received: by 2002:a7b:cf0a:: with SMTP id l10mr8284178wmg.4.1567489057760;
        Mon, 02 Sep 2019 22:37:37 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id f24sm16833876wmc.25.2019.09.02.22.37.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2019 22:37:37 -0700 (PDT)
Date: Mon, 2 Sep 2019 22:37:35 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] kbuild: rename KBUILD_ENABLE_EXTRA_GCC_CHECKS to
 KBUILD_EXTRA_WARN
Message-ID: <20190903053735.GA56603@archlinux-threadripper>
References: <20190831162555.31887-1-yamada.masahiro@socionext.com>
 <20190831162555.31887-2-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190831162555.31887-2-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZHTJjC9m;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Sep 01, 2019 at 01:25:55AM +0900, Masahiro Yamada wrote:
> KBUILD_ENABLE_EXTRA_GCC_CHECKS started as a switch to add extra warning
> options for GCC, but now it is a historical misnomer since we use it
> also for Clang, DTC, and even kernel-doc.
> 
> Rename it to more sensible, and shorter KBUILD_EXTRA_WARN.
> 
> For the backward compatibility, KBUILD_ENABLE_EXTRA_GCC_CHECKS is still
> supported (but not advertised in the documentation).
> 
> I also fixed up 'make help', and updated the documentation.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190903053735.GA56603%40archlinux-threadripper.
