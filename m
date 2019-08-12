Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLN7Y7VAKGQEHUFFBDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 908AA8A9F3
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 23:52:46 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id c79sf94770255qkg.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 14:52:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565646765; cv=pass;
        d=google.com; s=arc-20160816;
        b=0gjc9T0u/veSRAbHNwydjg87tzhN9Kbta5YwY0TiYog7xPlA597BG/DE2tJPxPeW9j
         zoTul/mFoXZPRtNP5EE8fBAUmkUE4bv3S12YH8FQ5QX5FPRmxGwWCg9PIIq+oUJMUfRN
         i72q6RRSfbXtVosXC2AGW10cfGBmjFQ96VEjNsrJnrfXimAPdbyZgxjvWgwRenOUlNK7
         rthnezexElbCg6Iu3CAIEFh/goAYi0l4ZSFr9JbXFeumfhaVYYT8nWULBif3jb/+lrZo
         6ExqtDm08fuOcWfrPWYJqB4ZQzdN8UspnpE+6Ay5crihqT3MkNPAscNhKMeG6tS0y/K7
         kQ2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=HM2vb8xrlncc74UgxLH5D8ncZdVoLUU6CHVokF2KsJc=;
        b=VCAyfeM1QIXjdPXOLV5QWqTwVVchLvgFkq14OqpmJAtxiz5t3zX/WEPylar/pgE9N3
         DaJDZgMc7gNGx8LrZLrAvEVSoqfMdlfAWHK6F3S+b8Uvkt8RsLspGQL4yN80Yi/iDA9l
         rRErrmAa4sA2r7cu8eOlYq6wQSb6eMMCu6q3JRd7o4V7/Dn0AW1sP8QXyaO+j3f/RNJT
         u7TzwsRvsrknVEzzmSrygLq0J86RGy/1YjXh9NwwQ6L0etola1DTatYle0pYIju+UXXA
         uAycbl6+3E/5LICRbc15Al93jg1sWLom9KluqoaVbiuZwd0F00YUjlY5/BMnUVUwETxd
         cB7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qCcbdR00;
       spf=pass (google.com: domain of 3rn9rxqwkakmqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3rN9RXQwKAKMQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HM2vb8xrlncc74UgxLH5D8ncZdVoLUU6CHVokF2KsJc=;
        b=iaG0hAvpXSIntRkeTdD2NQ9j61LfCa4b/tEhe1FXH3Zrpc7cEzD5saOTsVtgjiGwp7
         gh+e9BgZkpVGBPGXUPycAip8Vvc+he4JJQcDehL0Kk/67/BV7stJQOmyHoiaq6x6QqP2
         Vr32j64ejLPD5w/42PzON6tJnvbB2VTRgxUtkKWFgcPEbxD2tgnWzWHbDG4mPH8QQKvH
         lY6kpFJQbrakT/2ou/yi1+7ZnjD8t7sOMF9ccVtnH4EgkUQlX0g0PzCt89QY025x93JV
         f+wNeT4MyPKPPQAhxVZ0GFN7KSxauARGBnqpAh2tqvW1aP3opqxzYmaSezDX0VrPRURG
         fBBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HM2vb8xrlncc74UgxLH5D8ncZdVoLUU6CHVokF2KsJc=;
        b=r/G7CwZOCkqzFodIy/4KTqmz6ysNWzE6VBTu5m0+NJuOqihvHYhio+EvgjPQScEXB5
         Ao4/iaJk38Nk8hd4HKI8V2f5/XgVC6VpoXuIOzDkHfLYh0KARycicPS7zcFabICiZDiS
         AwcFyAO/mPiWfNCzbJjSl6V0OIFXPoj5+8PFeY9g6IO0T4qLDEWjhoq8CgLt9squVTYm
         3bJp/+kevZR/2+tU67oBK9FOnCuxTOTylYcRhFo4PHxweBOBn5yr+mGETcAo3b7bsVRS
         EDLkPBA6kVlaRF/lAuoRMgTK65TgWX+C2MmH3iybv8a5OQJhhnlAfNiwqymhGN7DSzpR
         G65g==
X-Gm-Message-State: APjAAAVOpOKhwGWuFsPr8f7DTa/Leat3dwVE/i5bC9lHYcDcVtLKFkpp
	2PbCzz0R2BJB3BPTlOG5Y74=
X-Google-Smtp-Source: APXvYqyuTCga1oe5KKN2l8yiHVCKeqwzNcQkiaienU/4BPh0AEx2y5Z1SQNo65HKnOV6VBDuRGod1Q==
X-Received: by 2002:ac8:1a37:: with SMTP id v52mr26075619qtj.129.1565646765728;
        Mon, 12 Aug 2019 14:52:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b846:: with SMTP id i67ls1167291qkf.2.gmail; Mon, 12 Aug
 2019 14:52:45 -0700 (PDT)
X-Received: by 2002:a37:9144:: with SMTP id t65mr17342108qkd.367.1565646765476;
        Mon, 12 Aug 2019 14:52:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565646765; cv=none;
        d=google.com; s=arc-20160816;
        b=ACkvUlY0df7Q2Rm2STyw5V9PHjmOgFed1WOcy1mfgIJ3z+NFJyf/EHWfKUv93IY+r3
         LPxTGlKHYAzQgYO39OSqFlFEIXgvGiXwNQXfmpeLXydoQK3loSg8Lu4Ytc08darmyeLf
         RwWSUaKjKJQQoNayWYwA1H/M8cftdegpgEPefzH4ogSBsIUEYBiAKE9feOSPftS42iBL
         rvWvO/YgxOkuPMZlxlzJIRFcEZVGTuR2rG2w1RclkqiIll3Gn7Wn20b2T9KyLf2ZxD96
         F/IeisQcK7YxoH86me4oudaiVVI3xt67IvEOB+U+KjasqbCr5LG4Z/FngfIU0jbhDqsw
         v/PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=G35OOE0sSfMuupCpgKQ0U4p9HFNylMt7P/lVbiGjqC0=;
        b=f/9IUX/nDU3i6vbCFLxjHgifx4pal/izglqCdTBjWNRXLRR9gZuvTzfMQ4mr/ZxFTN
         Yamr34COL9kbcn+rL6yztd2gg9OzquloMLZSfZrv7z7GpCHiQJ72tdosliB4dgjapRJU
         cjmLgmT6Opo3gVUi3yB7LUGsw/8Noj7T+Vo05S+ezkf/UPTOsTJJzKomgaDnPZ7gkbPI
         4AaZOaUkpszHSzmq6spgmiMNfgMbZrFgVbtTPVzbgjBvB3GHoHtysku9zUOa3LxUyxz2
         hUTRZm76yFJz7rlKs8X1LeQEdT8wOWrnIKwYCSKeGsgeX2hkUs4LbWeA3/ayGihHxGXP
         I+1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qCcbdR00;
       spf=pass (google.com: domain of 3rn9rxqwkakmqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3rN9RXQwKAKMQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id u47si840383qte.3.2019.08.12.14.52.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 14:52:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rn9rxqwkakmqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id q12so7074541pfl.14
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 14:52:45 -0700 (PDT)
X-Received: by 2002:a65:6114:: with SMTP id z20mr32341554pgu.141.1565646764247;
 Mon, 12 Aug 2019 14:52:44 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:45 -0700
In-Reply-To: <20190812215052.71840-1-ndesaulniers@google.com>
Message-Id: <20190812215052.71840-12-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: akpm@linux-foundation.org
Cc: sedat.dilek@gmail.com, jpoimboe@redhat.com, yhs@fb.com, 
	miguel.ojeda.sandonis@gmail.com, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Andrey Konovalov <andreyknvl@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Enrico Weigelt <info@metux.net>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>, 
	Shaokun Zhang <zhangshaokun@hisilicon.com>, Alexios Zavras <alexios.zavras@intel.com>, 
	Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qCcbdR00;       spf=pass
 (google.com: domain of 3rn9rxqwkakmqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3rN9RXQwKAKMQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
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

GCC unescapes escaped string section names while Clang does not. Because
__section uses the `#` stringification operator for the section name, it
doesn't need to be escaped.

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm64/include/asm/cache.h     | 2 +-
 arch/arm64/kernel/smp_spin_table.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/cache.h b/arch/arm64/include/asm/cache.h
index 64eeaa41e7ca..43da6dd29592 100644
--- a/arch/arm64/include/asm/cache.h
+++ b/arch/arm64/include/asm/cache.h
@@ -78,7 +78,7 @@ static inline u32 cache_type_cwg(void)
 	return (read_cpuid_cachetype() >> CTR_CWG_SHIFT) & CTR_CWG_MASK;
 }
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 static inline int cache_line_size_of_cpu(void)
 {
diff --git a/arch/arm64/kernel/smp_spin_table.c b/arch/arm64/kernel/smp_spin_table.c
index 76c2739ba8a4..c8a3fee00c11 100644
--- a/arch/arm64/kernel/smp_spin_table.c
+++ b/arch/arm64/kernel/smp_spin_table.c
@@ -19,7 +19,7 @@
 #include <asm/smp_plat.h>
 
 extern void secondary_holding_pen(void);
-volatile unsigned long __section(".mmuoff.data.read")
+volatile unsigned long __section(.mmuoff.data.read)
 secondary_holding_pen_release = INVALID_HWID;
 
 static phys_addr_t cpu_release_addr[NR_CPUS];
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812215052.71840-12-ndesaulniers%40google.com.
