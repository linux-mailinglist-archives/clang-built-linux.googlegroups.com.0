Return-Path: <clang-built-linux+bncBDRZHGH43YJRBZUJ6SEAMGQEDALJL6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E163F041C
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 15:02:32 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id w23-20020a170902d71700b0012d8286e44bsf670632ply.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 06:02:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629291750; cv=pass;
        d=google.com; s=arc-20160816;
        b=bzqKgeRZSZpQP8hRXnnOQYT6UbntymwM4AjCfNx8WjfV6kN+4cfQjZMBjq6QtH0VfE
         kuj7FSui18jeadC3rM2irnfqwXfoKuWUbA9SN88bNXAbvog+GbvA+peeXpdjbPF3x5pb
         j/rWOYYeS3Wr0j7JAa3f4fmjv2kRwd9CAmrU8zhcF4ZZLVsZZQlUUqx2QCo8ZcTmsAJ6
         eM9Xf0pp3r7a5ehurlGywFL2+OJEwle/9n7X+nI35YBiL8b7qgvxqEfVBiFU5C92vs98
         QqOu6hBLS5QrJzgYmDJqSOJEg/XPty8ESKHu/Z0kQ8LcxWwNaEHJuZ1GwRaOugweMwV2
         5tdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=YzkRMq7HeIf8qyS5Bg90sN1V3PxbNvBrYbxiw2pkl7A=;
        b=XPm9+3x0l1RU9DpRf55o53KmaN0+CeijmgPLI8RnHgTeXCBIlx9nWiJ2frEd4TKknR
         +O6Q7QY4yoxZMcinA8kZeynj5CH95sbuvQl4oVTChSmvZPwZ1nqkSKYosBBVH9HAzuxi
         4cdubMENBfm0Vuzw763zYqfaIG0fqC+ENVSHHSPqjPAb0cKU6butIqNX0stRrsYZIbiw
         oP/JIiv3/HMrN+rIpG8gKAPxRz09nNCWhNP7991kdi8r8kmoI2Cyh/iL3tu1dEzMU/mH
         wJJQGLKTAJjwviO9UhobvDf5c6+2ypoSXyZFCWFV7Y/KPAdlVvV0IqvQtviej4EzLYYG
         M93Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p816tpeN;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YzkRMq7HeIf8qyS5Bg90sN1V3PxbNvBrYbxiw2pkl7A=;
        b=iJenxO/JvJVGowAbrUghkEO8/2nb7QM4EKrTLRcj6yMu1DPvMPsm0kLAf5ar35e42y
         gzsPcbh8ESEvSzLqSFAj87mRytLNYoOmf8vU3WU7rv3uUr/tJDgzdW87+1G1HigCp+aw
         OFKqxCKCf3PU8/5NHR6R2QeloCmotmKE5DekaTkoeucY/tKzTXjg/Cx9jCNgVHV6tOOy
         c2e3VL6c0J2VlJRQjZV8uFrtz8BAbWL5pKeDfYYLqsqBUHguAjSfv/JCuQSCZG2UWfk8
         oWW+jYECqZdSycVdJaltXORqImdDumy1w4Xo70jw4GGjAccwGhRLTSAntJv9KDXdH87R
         dKzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YzkRMq7HeIf8qyS5Bg90sN1V3PxbNvBrYbxiw2pkl7A=;
        b=NBJeQNb90ou1gYucaOd5w+4OV8w3rrNGW9B9ploLodtabmCb2B5yh8C3/jKFVb7j2J
         cTi4Qx30WXfbADZIx+xbbTWNxsDGa0/JAH7PQ+MYj+3mC1kXoABbDAzrc4vUOT3rJGQ3
         6oiao6qfvQzT0G9hRhWgCCj0vb+Q0mrxX6FcdDb72qORq2IloCnRU5Fk27+zZj6VHVmf
         9573abSmglUOE30owJ+/uoALWxnNtIjhs9DUeizjXCfuO7n/WiQebuPsVp4qsjuX7B5E
         TjMeLxGOd0Oyn5Tc35VVi+7K3VRuAhXLOVd8nYX2T+CX43D2KitkUaCDGgzVe+9HVWf7
         gSeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YzkRMq7HeIf8qyS5Bg90sN1V3PxbNvBrYbxiw2pkl7A=;
        b=RVFgdzjdeQdhMyPoZdhJqZql4bamVRfU1Lz4PGz9rkHa/uI+AEESI1IlijpdE9WAJ3
         FQGYcCJtCDRgyWoYm7HuZgnl38q9HMhyHXPav/FHrcz+RwZvPCq3BhPYZ1uu2lhKTb13
         dKpB1zUSW7YPOWv8iUMRQxRJnK2KQJ83KCRizVFg59atkih/fII6TnrlcKt4W11FFwyS
         SipQGoVSxQt7MWCSlVSRmPEG+KpR5KhSn1AGBVnjqpD/u0BjUNMcfsIMi8Uqzx/cq1QG
         iXTkeOZT5DhIv97sLRVg8PYsmo2yYEJee2K4Saxd8MdLAcpEv1IywxlFu6cmw+N2m0DU
         hjyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533uzmwq4gO2RxWDBWYCDyR++3IvwdAYeTCFiSO47BVb/vFqKooM
	f9TiNhKut4WlbBeDiWKfcVQ=
X-Google-Smtp-Source: ABdhPJyReGHPnO5H2JMsqToj6wSj1MysnoyMtklDWIIwu59tsupPQcG92GJg/bg1Cw2bZPQpaawNYg==
X-Received: by 2002:a05:6a00:2444:b029:3cd:5af9:821e with SMTP id d4-20020a056a002444b02903cd5af9821emr9410746pfj.40.1629291750313;
        Wed, 18 Aug 2021 06:02:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c3cc:: with SMTP id j12ls1156299plj.5.gmail; Wed, 18
 Aug 2021 06:02:29 -0700 (PDT)
X-Received: by 2002:a17:90a:4549:: with SMTP id r9mr9258273pjm.147.1629291749026;
        Wed, 18 Aug 2021 06:02:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629291749; cv=none;
        d=google.com; s=arc-20160816;
        b=DbBOnEXX8wu+QGyAK1Aq6XttaNcbNOhbo2kWYw6FRWMXjGFi78zTf/fyYN4BGwfNjP
         OSr+gr93ty0cPQ/rsZJy8NSx6zqQPO26USm4PVcPLT6cT0fTinOAFYQn9+l/X8cVLBdN
         t3uNfKO8/3B1SvmYI7Kfzd+Tg2OETC9uFyy5TxwtsrNKOG97auITHmv14sRlk7OBX5cC
         JCA8uA3aY+3fHBFvSNU6YSBN/04Pth44GiOQogXA9w32/Vpz7jEfZxgj1r1gaKcw78Ja
         +e6q2VltsW+HHP0Wp84clOzyWJcsVVGZxQMt3bGyO/KDHcxGmv9T88+Ie23CxjDdmGGP
         Dx6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MkYUY8hRWwEu70DXUFF8siW38IO889EQpcP0JG9olHM=;
        b=u9at0qJMXqsL+trhvFyl7mZpEgZqOgdEILjSWPOKslgUHYVZuRWdcYMjsnfWjgHMBL
         dRPyXY7+bDEZ/+PriPlrncBxkXfbgeB0lVJ8F6zdjKIJveapF6ym1A6mv2A4jfT1ijy4
         1ejsXFbu9JysRHpuqoLXSMiFHsGyefcEGW0WynHkU1Ni6rDt01hBrih/UtODPbNHdN9E
         bJscbobXJlhLF33k8SHklXHzcoBA+82kv0piRstQmLGFStaIwScMfUy+ZFmS+CaoSWQH
         rLvjYV2xCKy9meQY3oTaCqC5xcLG2/ify2V3VMTW1eBpKtOKYdgndQHI823ll3eSUPhI
         oQtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p816tpeN;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com. [2607:f8b0:4864:20::135])
        by gmr-mx.google.com with ESMTPS id mn23si286672pjb.2.2021.08.18.06.02.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 06:02:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) client-ip=2607:f8b0:4864:20::135;
Received: by mail-il1-x135.google.com with SMTP id x5so2142031ill.3
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 06:02:28 -0700 (PDT)
X-Received: by 2002:a92:b711:: with SMTP id k17mr6012067ili.247.1629291748768;
 Wed, 18 Aug 2021 06:02:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210818060533.3569517-1-keescook@chromium.org> <20210818060533.3569517-26-keescook@chromium.org>
In-Reply-To: <20210818060533.3569517-26-keescook@chromium.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 18 Aug 2021 15:02:17 +0200
Message-ID: <CANiq72mQQuwfpFdxeJQoKnfpUFSPuakHRm8RC+eH-xECBjwDkw@mail.gmail.com>
Subject: Re: [PATCH v2 25/63] compiler_types.h: Remove __compiletime_object_size()
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel <linux-kernel@vger.kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, Will Deacon <will@kernel.org>, 
	Marco Elver <elver@google.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Masahiro Yamada <masahiroy@kernel.org>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Gabriel Krisman Bertazi <krisman@collabora.com>, 
	Andy Lutomirski <luto@kernel.org>, Oleg Nesterov <oleg@redhat.com>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, 
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=p816tpeN;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Wed, Aug 18, 2021 at 8:14 AM Kees Cook <keescook@chromium.org> wrote:
>
> Since all compilers support __builtin_object_size(), and there is only
> one user of __compiletime_object_size, remove it to avoid the needless
> indirection. This lets Clang reason about check_copy_size() correctly.

Sounds good to me, the indirection is making things more complex than
they need to be.

Reviewed-by: Miguel Ojeda <ojeda@kernel.org>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mQQuwfpFdxeJQoKnfpUFSPuakHRm8RC%2BeH-xECBjwDkw%40mail.gmail.com.
