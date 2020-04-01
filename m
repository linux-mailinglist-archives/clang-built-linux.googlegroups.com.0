Return-Path: <clang-built-linux+bncBAABBVE5SL2AKGQEEATHK2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F1619AC1B
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Apr 2020 14:53:41 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id o14sf20950174qke.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Apr 2020 05:53:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585745621; cv=pass;
        d=google.com; s=arc-20160816;
        b=jyZrfSKNWZenLK8d7ltpF2RPYaTsvdCZfVcISnrKWlTa7Ef0S2V3Eyo0/Xs3mlYk7K
         V00JrPDUAjlA5hvziDo8ma91wkTmWxzg/UU3KBEUUie2lTRARxRfdOAJK0MM8pyW9XiS
         O0CH9dwlkq57jDJJqpfpIK6D1Z4k5gNiVXDFuZnTEcq48ycVw1yKkcAJzY1Ah9JNPDje
         GD0GLL9PpzOwJDwzj28+O/EiXiTm07EuMVlqxlWcVTidP9UJXVFLu0pJZwvn9VVYSX9T
         08lojKiAvT+xi1D2b1fUoAyHNIX8qRx86cTcFBysaYntrsBozYSZUveRVaUOCApYwDIB
         A7fQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:subject:cc:from:to
         :in-reply-to:mime-version:sender:dkim-signature;
        bh=1HTFwd0RH6KmsSEWuxQyQDtAHCbPFNW79udkwce2oPs=;
        b=Vs3csYVXLhH4bJ66sfSYWElfATw0magDeeTzLI6pP1jUPNpWs1UnkBXXyambqQnUGI
         sFDiPK3t3KHvUpzIUFTASKGpFZX47LoJUa02sS4qNDh2I2BXEbc/oFpSnHur1dnN+2G2
         cDNkDBk9CTs4DA9gX2MU41ia1Fb5EqBB5AOXJpbqvnHAQoWzUu+8nkN5wlujMJFzUCeg
         6a3ZoZ+P3JbWBW9SRfZUtF5uchtsQRcL+VmnAp7tgQZXIv2KiQg3GfinyUriJKbsM2nW
         OL5xNvOQuT03cVsu7kYFWcdt84WSPtVVrl635zSdFL2+13zpG1zWSff/CpSz0ouu6gBE
         JV4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:to:from:cc:subject:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1HTFwd0RH6KmsSEWuxQyQDtAHCbPFNW79udkwce2oPs=;
        b=pIXoUGrniQu3Euy2D9v3XgbeLO4Vxg4Ql7luET/WsfFMcY0vO5hY5u8n/Dox+CuA9m
         Y0q2I6JIX/AUqH5b1GaGudwEO7sFxbNhBUT1NAD6OBuVZ23V9YPsmrh/9DefjSvoJcJi
         K7EQj2YNy8exS+33ZUfBGVTc25yIIvuFeRN13+ZEGhITm19jrv9uOVjvBNxz/ruap783
         cQlx5wYhRMBd57mPa6aMbY53ql02SuH3p7blVgG1OlqcvAoBjSInIh0Pm+PYmno+Gtiv
         F8cEqehjJ1aXktFrYhWa7f+61DJkMmWYH8ygvZyzoueGZP4jx2NSuntQjAD4ff+TlBnq
         Ss7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:to:from:cc
         :subject:message-id:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1HTFwd0RH6KmsSEWuxQyQDtAHCbPFNW79udkwce2oPs=;
        b=VVBhyiHOPRz0/jN+XL1dbeVkX6ife4bR+R5h4BSaSrF1G0BoZWPwGxE8I6t7ZJTzAS
         qj1FBzwLQqUbgHQwosFhu/eOMyZ81lR1dg7prhb/k0B//Bg/ZduIlCRbWQV02O4Vb+eW
         zINF0Bl8z8SxV1etkrTs435ZDciIKeb8bV9fzyquXb1Wzp2NcIutYjj5XUFxXi5Nqw6c
         mJ70k63/LxIyZmo1i31OKjFHaTFj3j9vprJedWqJO1NsNdvcemE2gMRprDM153IbqZrc
         gJi4sI6u8SRwiO6H76Hspye0/4lm3lAU+xZ16OwJjLEGZIL7Ki3nbm3IZOyZlrKTCTzy
         xH2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3zQOnsVnPiwUjn2U8XuDX+TQRuOQifeUk/xO1a8wh84kRZjT1+
	Kh69zVXWxw5r2zyP7kqKSRk=
X-Google-Smtp-Source: ADFU+vslxcs/ypmUn2am0yC0OvnQTMySyyIscmKaY2iDL9EBxgV8tBIRiIr83FTs54PodmhPpwA84A==
X-Received: by 2002:ac8:f27:: with SMTP id e36mr10082628qtk.67.1585745621009;
        Wed, 01 Apr 2020 05:53:41 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b946:: with SMTP id j67ls12081065qkf.2.gmail; Wed, 01
 Apr 2020 05:53:40 -0700 (PDT)
X-Received: by 2002:a37:a2c8:: with SMTP id l191mr9252518qke.120.1585745620463;
        Wed, 01 Apr 2020 05:53:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585745620; cv=none;
        d=google.com; s=arc-20160816;
        b=YGQbAr9ErQxg5ryLeQlLDJsdIGaM6nhEaBBg+zPi7fmVhcux3gXe0MiNzxwxX9SLo/
         zHUzNUaFcLrPZvv3f5CecQ0LX2PIjLSL0+9Z3LU4y5vH3yoCGLotqWgTkSTGJWrlEwcX
         R8zqVM1EcXDMvg/fOamjrvoJugzmNN3sUj8sg8X5r2/2XO3i+2KdrVgPftgeuSYV/sVm
         88fEIKmVo57awB1I0MXHxbhImrIsOVSJ4c/RbimC5Q1YTyUIoMr4kIbiWa4tpK/g+92p
         8edlZEC2aMDWVlvhyqQ/8f8eq+tzymBBLZBv92j9eY75vmUDQ447lGxMMkmgj7KL4ugH
         xGrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:subject:cc:from:to:in-reply-to;
        bh=tqnxILxLKKpKCjrojrJJbnDml1dKdfKPb5qheQnOvtM=;
        b=dlEZ2iJPdY/PHuI0eHvei4uMqXOOjZIzPz3QSZwslEA0Zo3yprO7Xgim3EeFDFmbxp
         bJ+eyJVpLx/2+HjzpNXBC5imG/NVO2UZ0ucJ9SUB+fEwJFfL9zSF8ZzU31EuWCnaVSHC
         KH/9wl0C1J5Wpp9lzpVQW03wzpaDyle0s3ft0EhG2eOeyxHHQ8vKUDaBSgiuJhPG0/Cj
         ANw1XFWT+NJXz0pWUoY+gawHjl1xdJ001/yPTvPvbq6mfoeWM9tKGxQWpe3oTNPylVU2
         sFGEKJBtKEUiQlhNtFC71Q27MzmvkQloB33L3DtHAI9Z77JBUh5rHwi65BXSKvXNhgBM
         cIBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id e89si136446qtd.3.2020.04.01.05.53.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 05:53:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 48smMv6Sqjz9sTF; Wed,  1 Apr 2020 23:53:31 +1100 (AEDT)
X-powerpc-patch-notification: thanks
X-powerpc-patch-commit: 968339fad422a58312f67718691b717dac45c399
In-Reply-To: <20200325164257.170229-1-maskray@google.com>
To: Fangrui Song <maskray@google.com>, linuxppc-dev@lists.ozlabs.org
From: Michael Ellerman <patch-notifications@ellerman.id.au>
Cc: Fangrui Song <maskray@google.com>, Alan Modra <amodra@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH v2] powerpc/boot: Delete unneeded .globl _zimage_start
Message-Id: <48smMv6Sqjz9sTF@ozlabs.org>
Date: Wed,  1 Apr 2020 23:53:31 +1100 (AEDT)
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=michael@ozlabs.org
Content-Type: text/plain; charset="UTF-8"
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

On Wed, 2020-03-25 at 16:42:57 UTC, Fangrui Song wrote:
> .globl sets the symbol binding to STB_GLOBAL while .weak sets the
> binding to STB_WEAK. GNU as let .weak override .globl since binutils-gdb
> 5ca547dc2399a0a5d9f20626d4bf5547c3ccfddd (1996). Clang integrated
> assembler let the last win but it may error in the future.
> 
> Since it is a convention that only one binding directive is used, just
> delete .globl.
> 
> Fixes: cd197ffcf10b "[POWERPC] zImage: Cleanup and improve zImage entry point"
> Fixes: ee9d21b3b358 "powerpc/boot: Ensure _zimage_start is a weak symbol"
> Link: https://github.com/ClangBuiltLinux/linux/issues/937
> Signed-off-by: Fangrui Song <maskray@google.com>
> Cc: Alan Modra <amodra@gmail.com>
> Cc: Joel Stanley <joel@jms.id.au>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Segher Boessenkool <segher@kernel.crashing.org>
> Cc: clang-built-linux@googlegroups.com

Applied to powerpc next, thanks.

https://git.kernel.org/powerpc/c/968339fad422a58312f67718691b717dac45c399

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/48smMv6Sqjz9sTF%40ozlabs.org.
