Return-Path: <clang-built-linux+bncBCM33EFK7EJRBE6QZ7ZQKGQETIT7WAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A74F18C27C
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 22:45:55 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id a32sf3210054edf.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 14:45:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584654355; cv=pass;
        d=google.com; s=arc-20160816;
        b=HteJJWnh73xXiiI6Zn4N5ynslqwGEi4oOyxWODsWt/W3jDCEjw1G3qkFsWbTAETLP0
         AgbJVNcBTiOqVNMdAbs1Q2ynXydaWnE0leS/8/aKBO95mx7NtsFb1vIxU+B124BpWIcD
         Rab51v2VnbOPpiHQYZSCtRwTPfLZ5h4W9PwO+x/izi9f1Gt0bhmqq4SUYsMYCmFOiG1V
         yoGp0jtDGS4wr28sqdCNbWkHCeRn5p8+rRDm+xkQ94pvKysgh1sVebwPQVVv8wImzGf4
         kODTxLet0tVwwj/ms2/gaTexBgjrap8QOWgH5xszKN33b1ISK8gsb+xvKzxiG1ENLL2f
         CAYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=R82N26GFqcKg3JF7EW6BqgTML2JPJTien9BNMu2YEYg=;
        b=uef/xxrBzIhquCJ4azS3Z0ifZeTbhdOSR27g+TfvzxTy76iraoCC/HPGkThKuiVn0P
         KX8uZFAnGsJibbE8h+kHk4LG28duJtCvpD2WPyB5dFe8udLauafaLcAEvoqDAeGrR1oQ
         Bdp5N6UOZfR6R1TVlyQxYJAXe8BVOhhcKKDt88MvPtqFSORPldR+aoMIQLZF9qPkbzXu
         oMEukBWabhBW1+Ut7csPoKXWtZ1m+fUwUm/MhfCexpZ6tN4dnxBGiZCpTnA+OY4t1BdZ
         grrHn2BedN92WayOM8BC/TnMfoX0zYDhCaEVpRnbw+COrtKmSPeu0E8UbL6uOL0Jrks4
         crew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SCQoUMIy;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R82N26GFqcKg3JF7EW6BqgTML2JPJTien9BNMu2YEYg=;
        b=e7QKJHEqN08yfVa4bBCSWIAfqeqcytuIuj1o3KvV053pFT9X0oD51GaGr5TKVJ3YrL
         9WdHiZC0DnT/t33fGSJXM8wUclR/TuH7vIarllDY07ufACHF1cyxr7w1J9Zwkyj4/JRw
         h9zfLDA084AUTMGwJ57mWBkfK2DQlv1Q18upIy6noPzHtmN975Kiuv0pZ1MeD5jj641p
         gXJ66Ik90GIQBttQ+Msv9Zehx5OijiMhL0uUMrQILVKSwWKj7QoPdDjDViQsenxlBgRp
         2TpbTh8CXQMatlk6H+Fm54Z2eojWpgtRwG+fb0iMnVRwubKjFNDHPnMots0AzBWRkXJm
         Eevw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R82N26GFqcKg3JF7EW6BqgTML2JPJTien9BNMu2YEYg=;
        b=Jd9+b8H/n4EziKsiZic0lBHNA3RSQk6BWAHofvbAQhmi+Y7cN0ukJj5sWo+EfxhfvO
         bpNJm/hPNheQAjt8Ye+zZWe/878tiRbH/EEVlPjVuRBoLePuC8ALjjmFeK/k1FK7KiLM
         FQvC6fHSv9xwfWfpV6i32DCATCt4pudbV0Y1Y+lu1NymRqha2tdFbDFi4qbrsy8wFx1c
         c9ClJDTgbC0iHvHIeIDUA3cgLW1dp/yW3PKJjlqVzk4k/aTuY0UBJd4Id1sBDgopyhXB
         1FgrdayjJHBhmynkLer8POgL+NSYkBXYRZBpsblCWwWhr8oWrn+Z4a8dAKpmSYXjpV/F
         JLug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R82N26GFqcKg3JF7EW6BqgTML2JPJTien9BNMu2YEYg=;
        b=F7dLl3eKIMJmeu+gE1ofMyhmMuMG4fKooFFxuRxfyv3cgUFUJhDgmFnoect8JJzLn3
         vJ6WxPuA65/lSgleNfDAuPIhfbBIOO+Chl62tu53LKe0CH8ktKBT0+hfCLKYpYdYBZkD
         zHW5WEi525nB5O3BYdlqW5acDzs/ZRwzrkJOhwatpHaHD6x1GwbXTnWZxc+rq2MDpFlj
         kJfzg0HN7IX70JAKTWA0P3QgLZXjgfL0LTii+r3C1Kr4QKxY/8hY4KddGzYxSuAGGyQQ
         OUYBmkj24P30wGz2C5gYmTd0aKJuo8a72WGjiBAgJu/PrhimDhlBiQxn2vJPWe/E3xax
         CyYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3aOCucLvd9/ndxRpEgl/Gza4SjMZ5ptTPHrUmNiaTulGs2cqti
	ze01Utmc8YQ6ZcpAnh4FtG0=
X-Google-Smtp-Source: ADFU+vt17cRxrQiqnD7r8Ivg1H1+8PTossklEw2Vn8lgf350iIkcYGMRDvDZPJpVGZE2SpreVeHcgA==
X-Received: by 2002:a17:906:739d:: with SMTP id f29mr5386363ejl.83.1584654355276;
        Thu, 19 Mar 2020 14:45:55 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:3715:: with SMTP id d21ls1813032ejc.5.gmail; Thu, 19
 Mar 2020 14:45:54 -0700 (PDT)
X-Received: by 2002:a17:906:2583:: with SMTP id m3mr5560007ejb.86.1584654354650;
        Thu, 19 Mar 2020 14:45:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584654354; cv=none;
        d=google.com; s=arc-20160816;
        b=P4DwcvS3slvnAgbqhu7GE/Ht9pvvtibcKPAaMNUIjwxpk9GaZ7GxrD+yMZtDTMHb96
         rLDKbU9cbY3AMlRoKz1fWFRXOJw5bMhiMUFCmzRGURODjegQ+Llt7UW0fQsXAXE4ATcJ
         T9wl/WcbrcJNbIyiBwvewgSK0mcOh1RMHn8rIxHMTmXEUbIPadK59iuyB16upYjaDm13
         Tj5qra89cmeNNUMOIvMYdu87ffXA9JoWbJauza9X2OfW2okA2JeZqkmUxrjd5pr75+tp
         0fjOLyJCFeRXNs9+cmnp+CV7GfoezA4DX8lhlegzsC0yk90oWgc99ZpwYeoZmPQl5Cqu
         QX+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=N4ZopA6jxYwy2PnkatOwlcBFmsjw5EoOzX8MW2R1axk=;
        b=GtO/xl9AGR5Vv8YZwZiUB2CvNdp7EC6aEQOLNeIwMF3tixSbQvKGqebzKIWpAXyhIz
         w5Zc87Y87ysBJuHKrqlUrhxB5Ys6MXENfxZGQg+ezGgqNKAEPZ0GZjDIq9cw2T7fdD1a
         KmHIHcNS18MAyPN9TnPu7ZOKOQ2UeAtEPszDhw7QJ91lIaNvBD0mqdvAgFYeV+8D/siL
         +a43fB9HM/sekklOyW2V2UMygebCWC8cTSmvWWmE/ZQTmrPtN130DjI+SLYcrqE1QqYL
         VqFwGdyRRq72taRhYT71KuFBXlWL6UneepmTOUNdWVcMJJ4zYZgslltphQgeOiBn8zsz
         Sxsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SCQoUMIy;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id x7si190759ejw.0.2020.03.19.14.45.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 14:45:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id 25so4437905wmk.3
        for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 14:45:54 -0700 (PDT)
X-Received: by 2002:a1c:7405:: with SMTP id p5mr6330915wmc.73.1584654354401;
        Thu, 19 Mar 2020 14:45:54 -0700 (PDT)
Received: from localhost.localdomain ([2a02:a58:8532:8700:6c17:119f:1ee1:b2f0])
        by smtp.gmail.com with ESMTPSA id h10sm5360793wrb.24.2020.03.19.14.45.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2020 14:45:53 -0700 (PDT)
From: Ilie Halip <ilie.halip@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: Ilie Halip <ilie.halip@gmail.com>,
	Will Deacon <will@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Andre Przywara <andre.przywara@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] arm64: alternative: fix build with clang integrated assembler
Date: Thu, 19 Mar 2020 23:45:28 +0200
Message-Id: <20200319214530.2046-1-ilie.halip@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SCQoUMIy;       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::344
 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Building an arm64 defconfig with clang's integrated assembler, this error
occurs:
    <instantiation>:2:2: error: unrecognized instruction mnemonic
     _ASM_EXTABLE 9999b, 9f
     ^
    arch/arm64/mm/cache.S:50:1: note: while in macro instantiation
    user_alt 9f, "dc cvau, x4", "dc civac, x4", 0
    ^

While GNU as seems fine with case-sensitive macro instantiations, clang
doesn't, so use the actual macro name (_asm_extable) as in the rest of
the file.

Also checked that the generated assembly matches the GCC output.

Fixes: 290622efc76e ("arm64: fix "dc cvau" cache operation on errata-affected core")
Link: https://github.com/ClangBuiltLinux/linux/issues/924
Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
---
 arch/arm64/include/asm/alternative.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
index 324e7d5ab37e..5e5dc05d63a0 100644
--- a/arch/arm64/include/asm/alternative.h
+++ b/arch/arm64/include/asm/alternative.h
@@ -221,7 +221,7 @@ alternative_endif
 
 .macro user_alt, label, oldinstr, newinstr, cond
 9999:	alternative_insn "\oldinstr", "\newinstr", \cond
-	_ASM_EXTABLE 9999b, \label
+	_asm_extable 9999b, \label
 .endm
 
 /*
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319214530.2046-1-ilie.halip%40gmail.com.
