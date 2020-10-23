Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJ6BZT6AKGQEYKPVFZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6542976E7
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 20:27:52 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id k15sf2066724ilh.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 11:27:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603477671; cv=pass;
        d=google.com; s=arc-20160816;
        b=kZq58TJFiIYKfRj/jmbjqVpgBBk1KsEvLzexp+PUKGe/7SFnLk96XogtRRajoEqDXq
         rVedzdSVOgdsFFNJ+4sowpM2YzGoAxjCL5iTbmOfisIlI+lvfnXwfc+S9qpqWA3L4Cwk
         BR8f8usfHHwN9eiA2UIqj/z/TN+Sh4wlFLpxOqFohZgGvqkAAcY4dPscvqKGLKhYDGx6
         d78lP9ByYTjMLlnIGafIZYr9cZmZvBgEni/6grhasekdHgxckDCrKfivzHmWOJEIJKg7
         zSq7WZJ+5j4wtt0H/IcZ3fzECaP/D6fcQMynvW2GDqTXOS+Ly3at/DMEOKprqMeUu8UN
         pNcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=r7W0L9/v4ZSAapblgfVDjQ4jWefLo4vuP9kRIeu7XMU=;
        b=dU57TLOTjsvDYNV2VYXk0YqKjEEdJ1N47GP4AzedIQa9dPSDl9AOU+MEJdOUq92XSG
         EFjapHkHKR56sqGb2XpT575yfVJaM+8/R0ek5uXyTF8sVQz4De1kNg4Imml7wOURxgGS
         38tQ/QAN2cHeu+wA+1TkeibTF+TUHN1qq8i1Szz4qbEiVR46T9PrE54T6PKCFSG6/WNq
         XnJkizn6q7j9+SJjMJijosrkWX2J83d2GSaZThQQ0yHNS5GInWiIwdLfssyBiEirodvR
         /Z0VTjxu76o87G6cMI3mJ6SxOCss+i8E60XOGXNj/jSB/gEZJENxdNQs76HZZ8JHvPpk
         sK2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NMnSibDR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=r7W0L9/v4ZSAapblgfVDjQ4jWefLo4vuP9kRIeu7XMU=;
        b=fHNmRJ4wY2H/rTkeDUwrXzYo426oa+WpAoaSB2Fu7ysTPgfaprV75eTEIIY1yEYz9+
         dFgIaMX3Te0xQhGNf6YbAqt58T0UDfqdtSMeGtCg/d/uon2iVsMaydjCG93yqWNRRo4G
         MD1kaREBjW8QZ8e14Z5gNNzyqpPW/+WnBlRQaKKY2opPdrSPbHPKgwK7OAg7WR4NRcNF
         upEKJWr3+rJgvcD8sV32buM33dBPUEzMC+QVf3BOCNUgTM7s+h5v4SOO2YNU8mVSfNes
         dV3Q4qsvOUZ+y2rBd9vi57G5slcMNSM80VRxnBjxKXVHQnXSt1nylAfun7EBqUd8bBlX
         0MMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r7W0L9/v4ZSAapblgfVDjQ4jWefLo4vuP9kRIeu7XMU=;
        b=hilBaKWQaovNkC++FfglNSK83gkYLEGAc3Y+cT2uBwDaZlwRWMl9sgrF8jkBnHO3kP
         qr4YFTRMgjPESIMmykoCuWRmfu2YCgluvMqYb75xEKd03q2jqDSpTfpxhryOH/HzDNEy
         UvCy2kLnIAgkwOQmOL7RIk6K954MjN1l9nVVKKTGwKVJZZ0x2XjoKRhOuZgIBO+gsN6T
         JkPLv8adUup1QL+Y7Ah/CHMnow/m1pnsF15nIhxTCFbDRca2bgfE7qiGNZ0tuUioO4Es
         Ny9MsViUOH9sjWwymYJsaP9rLwFke0ujxmKKEQAroEMG+uNiPvWfN4dFX4zEOzVu+ZQs
         XuJw==
X-Gm-Message-State: AOAM533cXRJWPO1caBiSj2iwGvNd12DqxE304K5x0654E2Jq9w8prx+z
	hGI6T8FRWaEIGlnWMG6SWcc=
X-Google-Smtp-Source: ABdhPJzntRR6K251ioD7E1v99enm0B1qbGcGW0PoYqWN1PJm7Y9F/VxE7dLpS4kWo3ylo3bLblS4qg==
X-Received: by 2002:a05:6602:2436:: with SMTP id g22mr2605285iob.79.1603477671848;
        Fri, 23 Oct 2020 11:27:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9a87:: with SMTP id c7ls371201iom.6.gmail; Fri, 23 Oct
 2020 11:27:51 -0700 (PDT)
X-Received: by 2002:a6b:e80b:: with SMTP id f11mr2562224ioh.107.1603477671501;
        Fri, 23 Oct 2020 11:27:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603477671; cv=none;
        d=google.com; s=arc-20160816;
        b=iAT153Gr4bmcY8q90MkbdAOHd+/kX62A/hy7JacKWNc2P8ENs/0qwqd+uCCxkwBIZ8
         PLOpgzgRcvHhlPs//+rqJ4wqp2rvD02OnFwRRqS7FT5JXaa9lL2dlyxIaCQPgSXEGsO2
         eYzi2beM/RuA/6Dka2fnavCRRTzoxEGmaLNj1j68bvZXBtFDDjel222ee1rQZAQB8bYG
         JCqASxL5bkccosVqsDSyJm1KXfUh6D0xQyVlbS7MUvNqV9U+8YNRCrO89HUdLo0rwZ4z
         QF+IKKJayg7h1z7y+EaWPbsglbYgwGoZj49BKjvzg3kgEpn+qMXn5QaqEr5RPjUfFhb0
         gVyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=K35quCu9EYfygPY5RfX8hL/VvG9frFaXwOR4ttgwvhQ=;
        b=jbmgkcOq0eH19VGkAOemg1Pj6ssti2T3oIy+N+wnHCFJzd0QMbs1zalEnGTpKSvQNp
         7mOfv8c1o09ELUUtT3mw17Px13zU5s3147x4wOV7YJ4Ycx1JeOni8hftSmNpI+iTn69G
         oAH9MX4Un5/BO+Ws8Bewp6LONk3EyQzAjsywTPKSy0Ex4vqzIK7x6wGYPSeOu53JSonM
         S8UMsXkSorBzbNkPnsfBuuR9fqXG53LQ59b26xylLRj0/CXtc4OxgTaRiaInE0KPGIoM
         MTVcmerCxaMs05rNu+pj7e2l6bGXOOzNI98UkCgO8Vu/8fAcfXCjkd2Zy/ILwYN8v1XI
         uK6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NMnSibDR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id k3si152590ioq.4.2020.10.23.11.27.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 11:27:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id h6so1911986pgk.4
        for <clang-built-linux@googlegroups.com>; Fri, 23 Oct 2020 11:27:51 -0700 (PDT)
X-Received: by 2002:a62:2905:0:b029:15b:57ef:3356 with SMTP id
 p5-20020a6229050000b029015b57ef3356mr440396pfp.36.1603477670726; Fri, 23 Oct
 2020 11:27:50 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 23 Oct 2020 11:27:39 -0700
Message-ID: <CAKwvOdkJc5xp=k_gHNtoY4Es20vj557B4DCJ2Qinvx=ojkHPPQ@mail.gmail.com>
Subject: clang-12 debian image
To: Sylvestre Ledru <sylvestre@mozilla.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NMnSibDR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533
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

Hi Sylvestre,
I noticed our CI has been red a few days in a row; I had reported an
issue in upstream LLVM that got reverted, but I think our clang-12
images stopped updating?

Our latest CI run
(https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/404327921)
show version:
Ubuntu clang version
12.0.0-++20201018052613+ce619f645f5-1~exp1~20201018153253.195

which looks like 2020 10 18, ~5 days ago.  From the thread with
KernelCI folks, it looks like the problem there was with clang-11.  Is
a similar issue affecting the clang-12 builds?

Is there anything more we can be doing to help maintain these builds
with you, beyond being a canary in the coal mine?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkJc5xp%3Dk_gHNtoY4Es20vj557B4DCJ2Qinvx%3DojkHPPQ%40mail.gmail.com.
