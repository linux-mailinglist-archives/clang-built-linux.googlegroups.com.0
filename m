Return-Path: <clang-built-linux+bncBC2ORX645YPRBS5OR6EQMGQE6J34K4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBF43F4F19
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:13:48 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id bo13-20020a05621414adb029035561c68664sf12877120qvb.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 10:13:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629738828; cv=pass;
        d=google.com; s=arc-20160816;
        b=flLfuVMwln5EL3LkNmMLR4Ihk9YKmrzP/TjAFnxQ3aIviLxWmcRKwccBFJb3MXrdGq
         JQtlLPHZD7DWA0ByO3djypxiLB0HcBtAhFER8SBt8enHv+97lSZkCVD1LN5VSlguMEhv
         RgDShvqBgJfjr4NWzCRLhTvuoI9Ks3uBq1tUPozbmHgaO7FQtRM5efSzsh+VDGYInMbT
         T8T7G9SlkxBYsgFH9jxmDHYrpFW9reyvTKFqiW0RXItfqVChlVTLW1eBu3/mNmx8grTV
         4/6fvCPp5mt9KvO9wq6uPdTjOM77cdfBSz8nl03CZQmI3R7XakRnYB+R6PI4Q67lIx+U
         asEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=nXxXsfjadJqH92DGZAkPKh32GVwjGrdp2Krbi52LSz4=;
        b=pcaqooxasXmP/s4gdFjM1aXRDcKHQdWbYC7QpMd6dzVGnvOJJbe+b5XSiwo1NWv99o
         S1p0RCuB3U4RO8yAoYqMs/tZlc5TPZJdr4Rn7yQHSTYZHWQwyJtoy1k3sSsG6iHPTg8L
         vbFGYBPsiZwCBPIF1wtqXOsFdw8xQegmddG5ckIKnFz2RG/XAXZzPZ7Prbr55/FZplUL
         ktEePUSKoF3zxnZWrrlT0CQniSYqoUvQSE8NuFKj6O0wBIHSpqqgjVh2LK+p47twTu1N
         yIP04Rq8u20JClHbqeeB3AG4Fuaj8hZv1YrDbyKP5lcShqhDDxkAhD2Qo2kw3872cskf
         mFJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Jp/LpTkJ";
       spf=pass (google.com: domain of 3s9cjyqwkajgk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3S9cjYQwKAJgK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nXxXsfjadJqH92DGZAkPKh32GVwjGrdp2Krbi52LSz4=;
        b=TtUV5cAfnReM1WkFp+cowLpOBNruE2TEoYy4m6UcOAlfQdtvk6YgMCrhqKpFjKo6my
         pWiVgWdsJ3d8hVHDC6+CK13SgVUks+hzwhtxQvouN/oIscpWFcEYpoYNWjOSOkDK+Tf/
         y/6LcFSgFw+QU3a8pzBBGfQ708ErHOYwvA00/mg2bKNtKpSvFmSoa0b17Qbk0XpgxDoi
         +6v3lsq2esUmh41YPtSvhKU8qFM8cx/grcJtzfNywUA9ZtH/whsfREmoseOqzv/v7W6d
         NsOWgrFM099BwTkCa/f6RfLPj1uSavQe6U+AiMKOqeR5eXX1LTUz47B6YYAC0O6ZjYaA
         xoXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nXxXsfjadJqH92DGZAkPKh32GVwjGrdp2Krbi52LSz4=;
        b=NPpNSy++LWOxo/ij417RHfoiNneTCrcegwRzKk2bl/daQkjEv7L03Tz/IZhqJv/DXr
         nASMRwFH2NAqsDa3DSAjjA48kwyBe6fQfyweCs7/2F7WrxTDWzUccRz2KdR8IBGAD/HC
         +GeRT5VlnTefVdnD34yMQJdpcmBsn/phKbRIcD4IF/7pnHqA88jHNcf4vOFTqfen9R9H
         q45eVldcFspLfeN2KDrU7eceMwmPZsfuKn54D3bd9CvUK6EM3xyJWwU6eDqfIfqNMrY0
         g6LIVQPT33PYM6O+hjqUzKvPHkeguQ/4yrFbqa6TqhyNkgL/AJtN41C+VT1ajao6gR1G
         Thqw==
X-Gm-Message-State: AOAM532ACd0233WsvSeXrQ0jJPlv7M6EHMweVRT+1m95omYyhAP78mhG
	f+dK9twYqVeyuz2jMaaNoOE=
X-Google-Smtp-Source: ABdhPJxxxcoGD5ophozMS5Ea09ttCg/caTEU91A4yvmR8RLDVnauF8JQhlaEGFev8Ot4mYiYeuoS7Q==
X-Received: by 2002:ac8:5311:: with SMTP id t17mr30760489qtn.364.1629738827975;
        Mon, 23 Aug 2021 10:13:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5f81:: with SMTP id t123ls346032qkb.6.gmail; Mon, 23 Aug
 2021 10:13:47 -0700 (PDT)
X-Received: by 2002:a37:c97:: with SMTP id 145mr22056811qkm.121.1629738827560;
        Mon, 23 Aug 2021 10:13:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629738827; cv=none;
        d=google.com; s=arc-20160816;
        b=Z8KHICG1fuC5cyZUz2aDVHR473QAUrfauJvnZQ1MsZZA6iocHTGoGo/+rhXdU+eOmB
         83+UCSKAttFrlc6jkpwAP3IyP2V1fWixbbBK36IGgakAM8QwOIMkfli2Kee5dQb2IxRN
         XmwXSXJe/P7HEaW3A7UBtZbfIEuBVd2v4YBDGVNGVdLuJiNxSpb/kv8Ef5CvdAnthn42
         9LasWDW4rXa+JGLpy905eJvYyPDAHij/Sk9wQpQoaXMf5isK+fT3Q8ffEP/r2Uzn5d2Q
         bPIoNUOuigF96i4Nq+Xj0OTibukPevL408ZEWrpE5LzN+ulPpXNaXWy6ud/iiq8Xr/4u
         dBXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=waqY876EwA/wk10n7+SSCq5/Bx3gIEi3wIv2LvfyQCY=;
        b=U8OSd3BH1W68w207HhUgwkLWUWeOC1KiGK2Q9QnLIgI/B1HFKSEJc1zgXI8PEfTLin
         8ox202hAvL9KqbXWSMCBaBYUvC4uBpTDhaQ+qb99dZHpCEzQLIsXDNlN9QUIkjbY0hHJ
         IUWfo+gk7nO+pnV+y0s/QtgLtev4WCRmUG8/Ii1BpW8iJXe2X+BnnUMY865/WelSBE7b
         3vLXnZqTw9r1iIXuu4NLZ2o9i8RUHJuW6ZDSYCpOX7INTDh5to9iwp9zvX5omEw22+1m
         07jfPG+8ZRlx+HoCNwWmTHJy3yRYQroiE3dzzfE7BYNgZ1WkDta0PtbGC1ROgSr1TkWa
         pcpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Jp/LpTkJ";
       spf=pass (google.com: domain of 3s9cjyqwkajgk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3S9cjYQwKAJgK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id n78si838656qkn.1.2021.08.23.10.13.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 10:13:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3s9cjyqwkajgk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id n14-20020a0c9d4e0000b0290354a5f8c800so12790661qvf.17
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 10:13:47 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:cc48:aa6a:f4ec:7d19])
 (user=samitolvanen job=sendgmr) by 2002:a0c:e887:: with SMTP id
 b7mr14559706qvo.54.1629738827298; Mon, 23 Aug 2021 10:13:47 -0700 (PDT)
Date: Mon, 23 Aug 2021 10:13:15 -0700
In-Reply-To: <20210823171318.2801096-1-samitolvanen@google.com>
Message-Id: <20210823171318.2801096-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
Subject: [PATCH v2 11/14] x86, module: Ignore __typeid__ relocations
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Jp/LpTkJ";       spf=pass
 (google.com: domain of 3s9cjyqwkajgk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3S9cjYQwKAJgK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Ignore the __typeid__ relocations generated with CONFIG_CFI_CLANG
when loading modules.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/kernel/module.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/x86/kernel/module.c b/arch/x86/kernel/module.c
index 5e9a34b5bd74..c4aeba237eef 100644
--- a/arch/x86/kernel/module.c
+++ b/arch/x86/kernel/module.c
@@ -197,6 +197,10 @@ static int __apply_relocate_add(Elf64_Shdr *sechdrs,
 			val -= (u64)loc;
 			write(loc, &val, 8);
 			break;
+		case R_X86_64_8:
+			if (!strncmp(strtab + sym->st_name, "__typeid__", 10))
+				break;
+			fallthrough;
 		default:
 			pr_err("%s: Unknown rela relocation: %llu\n",
 			       me->name, ELF64_R_TYPE(rel[i].r_info));
-- 
2.33.0.rc2.250.ged5fa647cd-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823171318.2801096-12-samitolvanen%40google.com.
