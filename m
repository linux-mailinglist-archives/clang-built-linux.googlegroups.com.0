Return-Path: <clang-built-linux+bncBC2ORX645YPRBJ7PTL7AKGQEKTJ5N7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 7018F2CAE96
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 22:37:44 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id w10sf2982250ila.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 13:37:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606858663; cv=pass;
        d=google.com; s=arc-20160816;
        b=qs72UDCZDggNfM+py/6Q3N4ueoHcq87jYJwztotsYYpgMqUvCE41xOIbDzKFf74Y0F
         Ta8SESE5WdbnB6XT9GHfTL4FUAC1p1TmzkHmhG9Gw6yyCkAkmoyI+GqU+9QK5V+AcmdZ
         p+IlNDbbT/S/bwSdFzzLqUVhUTB3An533l0jwpwC3cz7hYUAmiJgE5JHxKG/79o2PP4X
         7E4/TmgVVsaKMomgp0/VZhXsrcBed3dWSNohvAFZosZp/GToR9tBnmb3QxiTfcqMBG0N
         tV51cDwVJH7OhqW2KI7wIGvGCskOlDHid6UvIY+sRKms85jYDBLbhSrx0DL9hKaRUh1k
         g6Cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=TGfP7rda3O3LLqbDgNBtjaVAyWI8hGoHbyC3OlYzNvE=;
        b=0QHp7vUeA693KaUAuTfDTkFtYvvqGU7/jg+8zIltEnyoaKXNYJjhOOmfyywMAixbhL
         TVCYWjsL82Eyfx9OZ6VVDr1Az/YT1SIyYRA0mVtwL5isMAZny74VnzzDX12YDtqe1Ah6
         RXKNxl9h3zD4/VL5m14XdZFCS6vYITpuiHI5k4PKGq8FuRk0z2SCnOUxx4trxPoQ931/
         oPHJAWRaW5Qe8/uq4M6f3j9vGvWMhbbpGCk+wUjQeanPK6npPm2zfqUeuYItbG1CI5cd
         L1bO2IbOzd8HGeaxU4A0XIDWhZJBmyo3qRMebeXoE+h4TVBKmTPTHQT5Mq3AjIUWFb8e
         ujhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vXHUajvU;
       spf=pass (google.com: domain of 3prfgxwwkadujrdzkfcmrevexffxcv.tfd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3prfGXwwKADUjRdZkfcmReVeXffXcV.Tfd@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TGfP7rda3O3LLqbDgNBtjaVAyWI8hGoHbyC3OlYzNvE=;
        b=tmanqTp4Yd7WkeUqr8q7BvdLNawXDkkJJADunOD2pXvFANBIrdb2TS1sr9pZ9EmShL
         tlgrFYnbBIbvrDVwCXiB01Qnpaw+LRoJ+7kVt8wp8/pVESXGA2TSy0J5O8g3ML9AKdTt
         DLrluzZYP7K1TwqFA/qQGSLUZ3ycFPEardfI0IqNCkHK7gwXxENwMrG/S+ZNFBv3Hcwy
         JSvQota4Ofd3beWMR2i4tGqEV4XOREUh8t9dP9EPysmVSRKttkQzdLMVwY/TzfFr2vvx
         mkAm/4rp7O066byD+HfoPoE7wsa7l79PZoEDb6ZFoht7fCHqvEicCiDAIlagr0NnIB+l
         QRyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TGfP7rda3O3LLqbDgNBtjaVAyWI8hGoHbyC3OlYzNvE=;
        b=W6i0KJepEPG5ruwX/mtB02OHq3AzQZSo66jY7kBIVCnA+w+WPBWd1rA7Igvr0kqOa2
         1ou3qa7bJI7zZu5Rc5WQoBMrBkgM+GLUfMzGTgQvUn2G46aBD8uw5vnvyqzVf1zBFWQK
         /RgkL3G7Oy1u54oNRUSm4UNzNOb9WUnYnsxoBYE8TJh0fmtA9QDxo9JzzzpJWCLgQ0Am
         taMy85Uf5Fyqwo9NR3mtq40cz0bbNkc8NNI4IxpyJb0dfr6vUlgtQKuFTgwUEy+e4iGG
         DXtwulKQWc1qikhvBLS1PXXg9zNMMp4IBgIVQpZrAPv84uf7COcpPkrZwha1dv0TAzwE
         BKpg==
X-Gm-Message-State: AOAM531C4oi59kUfRaHziyM6aNjr7qLnYXoyhcPlZZdgzXZqbzu9azi7
	pdCUhM0GsCqrT9xaRioiiyA=
X-Google-Smtp-Source: ABdhPJzkzj5UmRiQubrn+dwuTwDeW7s5U9J00l34XIlRH21BdtIuWk5JcJ9nP6NQONBYWs79MmshVg==
X-Received: by 2002:a92:6f07:: with SMTP id k7mr4464398ilc.18.1606858663358;
        Tue, 01 Dec 2020 13:37:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:17ca:: with SMTP id z10ls11326ilu.2.gmail; Tue, 01
 Dec 2020 13:37:43 -0800 (PST)
X-Received: by 2002:a92:a154:: with SMTP id v81mr4631653ili.85.1606858662948;
        Tue, 01 Dec 2020 13:37:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606858662; cv=none;
        d=google.com; s=arc-20160816;
        b=U5eSpXT86UXHl7khrnzT9fVZGg3jq+NOT5Cu0SWWKR8axEcsncXm1XCnCqJwTRvMe8
         eKotdELeMZbD3plTVvDrtYEvRkoLj14znXq9c0eaVF0v9VFcRo9yPYs6nLKBSBeaaDKl
         4PhDVhAoAUgDwBUGSD3wUG6/FwVzJWsVf0jwtWjj4w7O35VhjOyJXRgc5w+239xJMbO+
         +Rd0L3mWjSTO6zaVo14u2SQWvjVDdnjrOxtLsg9zV0pztxL7gvzQEqdRacQDmg6h0yvj
         On+TA6KIOyWdAmTo8vqLLRrMnmRL48M2jlt/jrGHWOsOPQmR/zucIyTYbjFPyGz76Als
         RiBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=aPTc8wYkBIIZS9XLhaJqPHrVGew/rHRzWtLqs6SwnEk=;
        b=kTIl7U22EbfjIZRkY/OojNTqfawLVjpoWhAccYE6WjTNMEe1gYbld37+w1mOo18RWg
         pQGtpyjn6ddEMZ9yal4dP/dK/PV3BuTeorA7iWaChOAfi5lpFN7hezo4bi2a9JWxnE0i
         XD5QNl5Pd5yPRUGDQYDoVth4pPCsyAO8WtAPlYIYj0a+Fm3H91PYBtrfjicqsnAzarmt
         RSElf9I1iGpARHs+/tJXAzBQnpyxQmunncY8mMB39Nl6MmhVrWduHbzPHiZJ5bXZwZh3
         /HkywBNuGAp+rjaNBq2DBdBf88AK/qdYbW/7nBzGKMogD2XFANtEwsjhUo5pw7WE3Qjr
         5H9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vXHUajvU;
       spf=pass (google.com: domain of 3prfgxwwkadujrdzkfcmrevexffxcv.tfd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3prfGXwwKADUjRdZkfcmReVeXffXcV.Tfd@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id k131si71533iof.1.2020.12.01.13.37.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 13:37:42 -0800 (PST)
Received-SPF: pass (google.com: domain of 3prfgxwwkadujrdzkfcmrevexffxcv.tfd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id s29so2477598qkm.3
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 13:37:42 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:5685:: with SMTP id
 bc5mr5091015qvb.48.1606858662372; Tue, 01 Dec 2020 13:37:42 -0800 (PST)
Date: Tue,  1 Dec 2020 13:37:04 -0800
In-Reply-To: <20201201213707.541432-1-samitolvanen@google.com>
Message-Id: <20201201213707.541432-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v8 13/16] drivers/misc/lkdtm: disable LTO for rodata.o
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vXHUajvU;       spf=pass
 (google.com: domain of 3prfgxwwkadujrdzkfcmrevexffxcv.tfd@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3prfGXwwKADUjRdZkfcmReVeXffXcV.Tfd@flex--samitolvanen.bounces.google.com;
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

Disable LTO for rodata.o to allow objcopy to be used to
manipulate sections.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Kees Cook <keescook@chromium.org>
---
 drivers/misc/lkdtm/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/misc/lkdtm/Makefile b/drivers/misc/lkdtm/Makefile
index c70b3822013f..dd4c936d4d73 100644
--- a/drivers/misc/lkdtm/Makefile
+++ b/drivers/misc/lkdtm/Makefile
@@ -13,6 +13,7 @@ lkdtm-$(CONFIG_LKDTM)		+= cfi.o
 
 KASAN_SANITIZE_stackleak.o	:= n
 KCOV_INSTRUMENT_rodata.o	:= n
+CFLAGS_REMOVE_rodata.o		+= $(CC_FLAGS_LTO)
 
 OBJCOPYFLAGS :=
 OBJCOPYFLAGS_rodata_objcopy.o	:= \
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201213707.541432-14-samitolvanen%40google.com.
