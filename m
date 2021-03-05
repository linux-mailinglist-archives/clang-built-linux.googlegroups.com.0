Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5UHROBAMGQESNQRCOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B14432F6CF
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Mar 2021 00:51:20 +0100 (CET)
Received: by mail-vs1-xe37.google.com with SMTP id s63sf1179588vss.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Mar 2021 15:51:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614988279; cv=pass;
        d=google.com; s=arc-20160816;
        b=S5/UuabhvPS1Tkglk3fYFCXg/bUA2EqUV5r1u7WvA0w7YhJ3hEYPl/C5DAJBrPFJGH
         kIVfONWxgxBPDLAUmNyWZ2ogC2gMUunMoyl7oEs/vMwT+bA4KpO1jDcoVuXvwSCquwFY
         9X3DXdf4aW6KiEnKc+eBQSUv8c3nng382kgK1/MKKWZnSUM+wWeKvrYAf7AShyno+Smg
         ZDVy9D5pKJaKFN3u2meaEnE65SCBB8MNIDbaJ7ntlYpzDFrAtQ47rWA9/le/oZztOSW0
         4hQbz9hmNw1twNbSZLN+y5qVkne5KvUrsHPRPytRDcbodZyXZkLZnA/ByFSUMm6eheSM
         o0YA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=9cOy73fW4k+zXE8z+ItKxzl1FaVsQqm7w14/myr1MEA=;
        b=a/48w1TpLgU0+9/au4X9Cug1OMDD8S1klFH9dBG1cvWvRc+V/XCPcYJJ3xfu+FGkgl
         9X9MlZrqEhMtCGI2vrLeZdjovA0hLsqSUto8905ZqJh10RJXdpEmKs/y6nOoVOLQ/CL5
         oMvCzbKjahipXcDkOZoXndWGVJ5Sb/fZJrfC+CymyRc075ZOAb5CJDr/hdByukyOfvTg
         ZhfrrF8ta2J49l10IE5zVxeHQ+vC8yRNqOZ1Sjal5bFj6RtRn/fgWYVsKroDL3QlQrC0
         ptMGzh8Eh54omLhsxe/xRcjVNlg3OmnQau5pRVxK5VkfgiSnE+POzmm0lyguqs0RO3ew
         Bt5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PtRIbdn8;
       spf=pass (google.com: domain of 39cncyawkaja7xycue572ybc08805y.w86@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=39cNCYAwKAJA7xyCuE572yBC08805y.w86@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9cOy73fW4k+zXE8z+ItKxzl1FaVsQqm7w14/myr1MEA=;
        b=ol2kOm3rdrSeGdeYD656jwIf4kpGKzBsvybEAix1gUEnYXaw9/tsj3XiPuxdxYhwGa
         rEQauH9H3dL+9MKO4XXQOEaRD+ZFE44Gj/IzlpTP4KM4hOi3l1ifcAhxX6/rih5PNW9s
         8CU+W0tNhE/D3NVFzYz+ukVjQpKi5xyvJJXvNhcly+FemfRJwilMGgBMhrcvJyo/vKvp
         jCjzCeiE7ybqkDTFmN9p20rHHJVE3Nor5O4KRvHWax+IFs4m4hJ3NAEEuL2EL7N88XbG
         G4xLa12y/FKQEYjF1oRqPC8HgCnnu/KnG8TM+9KZKDQvST0MzflmpEjeITtjHZbByGUd
         nhCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9cOy73fW4k+zXE8z+ItKxzl1FaVsQqm7w14/myr1MEA=;
        b=kmkaGONu1zgK0vsUChikKG9jdm8nnF+iJ1BSsR6PA+0/I+Gz7rg7AcfCTIsuMGQ82F
         US/NGb3WwDzVZYlBFPuqt1SdP9m7NPNSMN6qHQdUA/USCWvI177OuDNDVl+WcrA/rGAS
         NWm5Lg2VsVhYahUt5WYOeZ7vvGGHvxx+gFNG0TBsLj/QgX4PRm0mGxxk9/Gfat2a51aL
         xlNI+uu+0VPg7g0Fkq1nasgT+ACgteaJ72VOdEnAsTpz/MdT7tss0zbuynJtcXpW9D+i
         fdU9ikvePciOmRETVorgc+J6NT0WjSytSm7rExkMM+B4+kwZEFayTj+VuoO6PqDKBhGc
         WleQ==
X-Gm-Message-State: AOAM530V3/2ZsfQbkTcNQhla23qMkYKCVbqKXFPFMLt63NMYDA7a+/Mu
	A/wMNhp8ODshkLL9vA3/7RA=
X-Google-Smtp-Source: ABdhPJwiTW1XMcQtWT94fZMQr8UwMAzuf2O/21vZaylRVmZxxoNFIcJqZz9MwRI2p8T8xfrABLG6Fg==
X-Received: by 2002:a1f:a5d7:: with SMTP id o206mr2574081vke.22.1614988278851;
        Fri, 05 Mar 2021 15:51:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:26d8:: with SMTP id b24ls928182uap.1.gmail; Fri, 05 Mar
 2021 15:51:18 -0800 (PST)
X-Received: by 2002:ab0:74d5:: with SMTP id f21mr8147881uaq.94.1614988278362;
        Fri, 05 Mar 2021 15:51:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614988278; cv=none;
        d=google.com; s=arc-20160816;
        b=MOclzE/BGlHVjfgw96cNk4rLtmvTgFYW+9qRmACD9c3xDwDLdyPyMblvr1a3XF2BTW
         uTR4oHu1wwW1fvE3WN3Nl2sdzrEcpTImFYqOC6E/TSAbi2e40Rbk3iFFgBTD2E8EXhMN
         Zg1nZTlivU2g+RGYVNYmPwIe2J/ipgv5o+mEOUNCKJ8Nerx3shyj2Z6EYXMC7piIGxCo
         +VlijD7pGFlqswJQf1MQemmI37NT8PbL7dQTX+87zXsWZpe/D3WHQmjdEcxMkh2H643+
         V7XbcrRup6LuVbqScHkaAm48soeG1v9SOtLli5HemjAr9TwjyeBcciKrXkc7T8CS/wAk
         8kKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=pPq2GBjtEGTbACHirO3sey8ygX15UCpeGvoYm9Um0sk=;
        b=Y96xiYDKNMnAiyi8mY3OPCRi+jXRHAboXmVI1PJRsRH8JQltUEsa3pTr819otAf6X3
         C8Zc5dVxOgI5MUVRLJltHKomhEu5TwaMtg6vKz9WIDsWRHkkLrdQHi+plBhj77aVgNBk
         zUKf+IwhIa4Yq9ak0vPMU2plAdR0JkFUKHgjitzLq8lSfGTzocT0+/aR6mJG/8VLDLlV
         HOyrvd3PsXQzyyet1NjdYGmz0+mKeBSjyMmSLLvVelAAoD97Fn3k+0JTGl7GtHL7A76A
         FHLIzdn4YoeP5D1vJBMM9m+jLOJVQSHJ+7OzV4fJp6dugPbY0Ajkq1KeKaqKIHuGfcuy
         7G2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PtRIbdn8;
       spf=pass (google.com: domain of 39cncyawkaja7xycue572ybc08805y.w86@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=39cNCYAwKAJA7xyCuE572yBC08805y.w86@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id u21si297964vkn.2.2021.03.05.15.51.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Mar 2021 15:51:18 -0800 (PST)
Received-SPF: pass (google.com: domain of 39cncyawkaja7xycue572ybc08805y.w86@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id u17so4304485ybi.10
        for <clang-built-linux@googlegroups.com>; Fri, 05 Mar 2021 15:51:18 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:b008:4ea5:7b83:9aff])
 (user=ndesaulniers job=sendgmr) by 2002:a25:b46:: with SMTP id
 67mr17897674ybl.50.1614988277967; Fri, 05 Mar 2021 15:51:17 -0800 (PST)
Date: Fri,  5 Mar 2021 15:51:02 -0800
In-Reply-To: <20210303170932.1838634-1-jthierry@redhat.com>
Message-Id: <20210305235102.384950-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210303170932.1838634-1-jthierry@redhat.com>
X-Mailer: git-send-email 2.30.1.766.gb4fecdf3b7-goog
Subject: Re: [RFC PATCH v2 00/13] objtool: add base support for arm64
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: jthierry@redhat.com
Cc: ardb@kernel.org, catalin.marinas@arm.com, jpoimboe@redhat.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	mark.rutland@arm.com, masahiroy@kernel.org, peterz@infradead.org, 
	will@kernel.org, ycote@redhat.com, maskray@google.com, morbo@google.com, 
	swine@google.com, yonghyun@google.com, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PtRIbdn8;       spf=pass
 (google.com: domain of 39cncyawkaja7xycue572ybc08805y.w86@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=39cNCYAwKAJA7xyCuE572yBC08805y.w86@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

(in response to
https://lore.kernel.org/linux-arm-kernel/20210303170932.1838634-1-jthierry@redhat.com/
from the command line)

> Changes since v1[2]:
> - Drop gcc plugin in favor of -fno-jump-tables

Thank you for this!  I built+booted(under emulation) arm64 defconfig and built
arm64 allmodconfig with LLVM=1 with this series applied.

Tested-by: Nick Desaulniers <ndesaulniers@google.com>

One thing I noticed was a spew of warnings for allmodconfig, like:
init/main.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
init/main.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup

I assume those are from the KASAN constructors. See also:
https://github.com/ClangBuiltLinux/linux/issues/1238

Can we disable HAVE_STACK_PROTECTOR if CC_IS_CLANG and CONFIG_KASAN is set,
until we can resolve the above issue?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210305235102.384950-1-ndesaulniers%40google.com.
