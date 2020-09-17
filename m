Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGOXRL5QKGQECJ76IYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id B20C326CFE2
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 02:19:38 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id q3sf88712vsj.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 17:19:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600301977; cv=pass;
        d=google.com; s=arc-20160816;
        b=SH7tiPs7OVAOJqjoIxJjIK8+q3bTpveYfC4USKLBbUTq29UQrOd3RC3IxsXjHpsCag
         /6YCwfHckGXNjC+lOYx+nEJfozRwYEYaOJu0Yf0g9cAjVnrVG8OryDDEIeDBqMV46+5Y
         olZKMfqVJRIC/UhSRH/oVxORJ75jSuVtPvJJKgcGb/lBcX6iVjLpmCzc7nM4Ig370njM
         K7ywsLiGvJlDG42hKDKOecoCcPv3Wam6JgS5itIgAd3d02SMuDBkO/Bgb8LPP5YIRoNw
         lczGHi+2/FVFH8XldLHf1E+UmKfmPQrjB8Yc01Q0Jriqm1KzxBBr5HwsAGfXpAp0QF0j
         zAuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=UQMS/iizBaTTlL1EEPTmrvElDUqrAfwoGTXqWzNVNbk=;
        b=eD1ZmuhluwqMTw/xDyxQoLcCNcV0WHyvYHS6d9I/GC6EoWz9ObyaS68ln6c2ULkyqj
         mGCX8oVnAVgV+x2mp03mO1mWG7EBpIVHGLnN/San+Sz1J4wQJalevZVqxmc64LMU+UN1
         ZxvkNvoX69nGD4iU/fda/sySWPOLbmBDnUyudcuC27eYAXMb+hKJcUa0PmRIoDE9+z92
         8Fcv9NFjTv7pIuSVsN4u0/vIfXx0+86rFQ2uvdvf8+DGFBBnVu++xHn8vGwAIZ1W/Z3S
         YjxIBi7E919dB++4qePZoGbugEaD+81VJL5fH0pBcL1mpZqWQudkmIiuEwJQTkngOo11
         /faA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rBlJl3SX;
       spf=pass (google.com: domain of 3mktixwwkahsmcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3mKtiXwwKAHsmcdrZtkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UQMS/iizBaTTlL1EEPTmrvElDUqrAfwoGTXqWzNVNbk=;
        b=WrGYimN36kUMZ/AN+tMfGJe511wWF7QUvRWMSLbQiJQhsyu0MeSQZ8s/jQwr2Nm8sZ
         hBgYI6jdrXJifxVFrNg1i/rFUYzvD1BKaOIsLaxJh5b+SDbhYBH7UKPscn6bgIvb7HTl
         ULs0iTOqFt5x4rGsMhwB/XbTt1GgTuqB6N3s76oLSC69WrIK2eiWTzenMgs4R1sBcuE/
         aE3WhNVG7IO56MssZa+g6D+SgHIvxwyakobrj4m6SPRlSggxFiZQHJaZ/iYYLLFlmeBM
         IgPhikuGSQHPETDeenZsLskyHcbqBjm5vZ4Eu9HVbxYJ+x3nN6Og81Pm9aC4qCabEjBx
         ikew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UQMS/iizBaTTlL1EEPTmrvElDUqrAfwoGTXqWzNVNbk=;
        b=Vhga7gmZdGZv6JJ1/T6HvKeqtc0CNUB1FrT41Tjygv5lG02uKWDYpcKd0RWZIokOAw
         Lk181/FCiqCCGTERQFWOiX+WCY9Ooe9uVXl3AX5sHdWQ1ED4DUvUQvnf/M3TvLLKjkWu
         uvME8vv5IOGI0gU4DUcfsPk4ZF0YKmrHp8E8ROPklxqdguw2KwJFUWZL5K1+NZ4hjefM
         2k6StHwe0gquY/ABbgMS3qAEdswiPFi78kMVG0TJPG01GmfOg+0BHpXY3gX2PHmTxQGM
         EUZGLJrvHv1ciN8vnVXS+Hio+K2SvawOb+M1eRyli8M/gCgKayj0p57fuDm4VyTlPQA4
         006A==
X-Gm-Message-State: AOAM533RBUIEcY4jJ+MzqoGamsPlCufVRqz4vfyOzqbNSFHhAO0SEFEp
	Ayk4LbU9ZhgBJct39gNw9RE=
X-Google-Smtp-Source: ABdhPJzSha0Qsuk4rP+fUAo46ukws+rr+9713DsywA0hUK42rsw82+4K4jreZkPYiJOC5gGaJdZtzA==
X-Received: by 2002:a67:1d86:: with SMTP id d128mr6606319vsd.58.1600301977687;
        Wed, 16 Sep 2020 17:19:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6122:7cb:: with SMTP id l11ls16678vkr.3.gmail; Wed, 16
 Sep 2020 17:19:37 -0700 (PDT)
X-Received: by 2002:a1f:3dcf:: with SMTP id k198mr15854406vka.12.1600301977127;
        Wed, 16 Sep 2020 17:19:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600301977; cv=none;
        d=google.com; s=arc-20160816;
        b=MkbM8bAChnVevV8r5Uw4I/By3Ryg43U15jHNeXsm+p+0eCrCojbXq663xKjKIIKzQC
         T5yrHSKbaiidDWbgHixAUnos9HuV1yhTjWtRnWQcXTg0AX5b2Z8NQSiaq7ZrANHnt5PC
         l+fXZgEgVbhew0CVgJpvu8n8a8VOKsSom+Q5ha1TrR8pxhGilMXVBQGe3LS1rgvitVSY
         HlfWAegg4qegbd054w63v+wl4zT7jdFE73aBgi/Y8XBcSQNOBdV9X9ZuFOrtd5PlrwGW
         trrzhegyfwHJqk9ZOC667WGQtHhK+s976ywnNKZ0sy0XCoUvi2AFKwB2PMbzIQ6jozBf
         tMPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=+spLOPOqYEotDF2y8HQ3qi+ewoKqTD1Kc3/rTara360=;
        b=Y3pzpl8WaGI8SiGrIlYqHTb+rJHhhC2IaAsjLNnohe8Iy8mxfNUHx7HmylKaYMClmq
         FMEvoYQe86ndaOTlhxsQvUi79kSugshjqjRbWHP770E5A/W3B5zSscZdqybAuWa764R8
         egxwtBSwK4BMcn8boEjW6LD8wNJzUccfRDrrDOFsmKnlD+RpsxtHq/6PFffBEGJTPthl
         7KhsC7RFOhxnhc+HXEjfmG1ehlEaqF5sSjVC1tyyxoBhrkBTVD+W5j510BJSxdwaUbqt
         Mvj3hPOdIYkqg9gBFQ/ENFx8BLkg0kJVkkHog7PpZgFATRjufRvYFecpCfzQYlamFL5r
         0rIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rBlJl3SX;
       spf=pass (google.com: domain of 3mktixwwkahsmcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3mKtiXwwKAHsmcdrZtkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id s9si1424931uar.0.2020.09.16.17.19.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 17:19:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3mktixwwkahsmcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id f185so496196ybf.17
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 17:19:37 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:d90c:: with SMTP id
 q12mr5406595ybg.442.1600301976708; Wed, 16 Sep 2020 17:19:36 -0700 (PDT)
Date: Wed, 16 Sep 2020 17:19:34 -0700
In-Reply-To: <20200916085933.25220-1-song.bao.hua@hisilicon.com>
Message-Id: <20200917001934.2793370-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200916085933.25220-1-song.bao.hua@hisilicon.com>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
Subject: Re: arm64: mm: move dma_contiguous_reserve() to be after paging_init()
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: song.bao.hua@hisilicon.com
Cc: akpm@linux-foundation.org, guro@fb.com, 
	linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, linuxarm@huawei.com, 
	mike.kravetz@oracle.com, sfr@canb.auug.org.au, will@kernel.org, 
	ardb@kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rBlJl3SX;       spf=pass
 (google.com: domain of 3mktixwwkahsmcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3mKtiXwwKAHsmcdrZtkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com;
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

It looks like that change referenced may also break arm32 boots with today's
next?

The following allows me to boot, but I have no idea if it's incorrect or not.

diff --git a/arch/arm/mm/init.c b/arch/arm/mm/init.c
index 45f9d5ec2360..7118b98c1f5f 100644
--- a/arch/arm/mm/init.c
+++ b/arch/arm/mm/init.c
@@ -226,9 +226,6 @@ void __init arm_memblock_init(const struct machine_desc *mdesc)
        early_init_fdt_reserve_self();
        early_init_fdt_scan_reserved_mem();
 
-       /* reserve memory for DMA contiguous allocations */
-       dma_contiguous_reserve(arm_dma_limit);
-
        arm_memblock_steal_permitted = false;
        memblock_dump_all();
 }
@@ -248,6 +245,9 @@ void __init bootmem_init(void)
         */
        sparse_init();
 
+       /* reserve memory for DMA contiguous allocations */
+       dma_contiguous_reserve(arm_dma_limit);
+
        /*
         * Now free the memory - free_area_init needs
         * the sparse mem_map arrays initialized by sparse_init()

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200917001934.2793370-1-ndesaulniers%40google.com.
