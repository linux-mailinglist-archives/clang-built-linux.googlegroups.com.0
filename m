Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6W6VHWAKGQEX2CY5MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CF0BD2B8
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 21:33:16 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id c14sf1763155plo.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 12:33:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569353594; cv=pass;
        d=google.com; s=arc-20160816;
        b=RngBQ3OGlhT5EeV0c5MRipgMh/jhykv5bAL+pDrBxsLPsxSbmxS96ystuGPfOwm5Bb
         R29jmLrTAyqC05R75z+pcTXov1AXALkxBdmCY6QVN1Fg25FyEwGxKhn1TrLnn3yX+76Q
         SYgjuIBAdwlcMFTYByvJVQvTIkUDKv5jsJKWQC1wZ9peL0bzT1wfYSmpaUBC9VmMn4VN
         LqRF9lnq6HO4fgyyKCeZ8HASuK9XLftsOUtDLhLLy3vxxupS8vtSghgzkPNs7+vrcGKL
         B93zf6Aa+8hHuraaL9tdvLHPyUyzrQl3nN7PRRvd9qEUFhXzh6CY0SgYbKLsF5ZtrV9m
         8N4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=NUhYVWtkfNg0ZnCNy9gg12p+X5X3TLlfgZh80f0ind8=;
        b=qq+UX69s3N1n4puvqxjMH6zBK7EHfh9mR2Ntf+C0RX43EY1iVQM/pOJRB3UDytksgi
         IeoUPRwHpKOqjzpUbE0rj+KaJBao35xjtrPTs7H0kJ2CfWg8KcU7igop7tG7S29A5u80
         JezeFgQ1jhgWv34nMADvDVN1bI1Xu3p98hesBc/Cl17YTySYTlLNtRu34eE7GXP3lKOr
         BISHJryL6XSgw5kLGXOaLD1LeaEQFxEmYSoK8RI6NGm2G9Vdny++laiITgSGwIOutfIB
         /A8MMCKeu3A1LAy+3FkIajl1sZY2ihSHav8ozSVU4MtgHT5CSPqZG66hCIRCMH89+X4J
         2jQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JCee7g6O;
       spf=pass (google.com: domain of 3ew-kxqwkahqfvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3eW-KXQwKAHQfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NUhYVWtkfNg0ZnCNy9gg12p+X5X3TLlfgZh80f0ind8=;
        b=dfuNrh+bGillAcdnnzTkwBQV4dIP4ok8nDpAMiwPVErh4WCGfFkLO41W7OMtS6XDqA
         3p0W8KE3My0rzzsepa4LChtr6DTLuzkG4o/UjAAOYMFEVUObpMBYwNJrWUJzi5mvV1Py
         LKP+b2Ru894bCSdsqAqEyaU4SOOpDuEcSlEgG2csF/20qd9RzmJPH457H3A7ICLBT7V1
         g5POcRyJ0LUSsp7FCWOapwABn0NIXx9ZWnk4ItB1i+YhO5H7weOlXxm1JDXplXiN5auQ
         b6pf2xD9nPJzcdpzfHabwYwDkLu0cJniO6mMeIz9Xu7jlVTa/bQ0fuQqy3mVXg5CqHq1
         zbGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NUhYVWtkfNg0ZnCNy9gg12p+X5X3TLlfgZh80f0ind8=;
        b=N59k6gzBkoWGJPcobSmWXH2O46mQlQfQcvMpeXtKXmpQsWv+DkLxt7OOf3/jmRqDGb
         e+vz7XQFcH3scvcOYDB13Pdv0/Fj0Q7ELwo/MjMpS9IxTsZeA6QL+tQKkRRQietA11Y3
         1Owp44RNsKXwTAtsl0y9pk3Sdp91IFE9a03VwIP+iY5EuooNDlChmEA07zKTHvY52Rwi
         XC6vTun/JSAj3ebDDWB8iZw5xzjVyFvV/F8nSRlM0hOT7m/8Ajyy3JYecgwYEdnqqSSB
         o8LbrUnHXbE4ULnfeP0evCDkPNm8RqQ2ei6cS6x/T0CUdK2NlP02ygz4v330dk8xzy5+
         zdjQ==
X-Gm-Message-State: APjAAAWQzGdLm+w7MsV7SENS0UDo6McJ5Klbu/VPQqAI8e25/RFnzDCX
	d94ZdT6t/Xlj6NZXjkiEU+g=
X-Google-Smtp-Source: APXvYqyB1YdBdYrUU4S1p1YUkkrQhL4G9QaYHwy6T3y+Krn7ZvvwWRq4PsY/jtQSNtC4MzvlqmjfTw==
X-Received: by 2002:a17:902:144:: with SMTP id 62mr4671494plb.283.1569353594699;
        Tue, 24 Sep 2019 12:33:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:63c6:: with SMTP id n6ls759501pgv.10.gmail; Tue, 24 Sep
 2019 12:33:14 -0700 (PDT)
X-Received: by 2002:a63:ea52:: with SMTP id l18mr4786701pgk.145.1569353594358;
        Tue, 24 Sep 2019 12:33:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569353594; cv=none;
        d=google.com; s=arc-20160816;
        b=KkxqR5EGbKOTyo6FOoK7onBN9AqaO/dN7LZno4UNmJckkV3CLeybTSO1lVAFaOZ+OH
         bs/fEkLB7Ctvwi8KJjLL6STfljz+tjLsJyLGw0ebN/tmjkyxIooB4BKPEs6T9BT6yo59
         MIRfBLHQpClA4vcrJlIKMzOj4p98DMJppiGHIWS71cZ7ehD6zoB8ezcR2n7vllG9q439
         y17duUCbHJvt9pgIi9ejFyZCZqORRqiGLzDs5oA+DFRR4yw9QWaG8H8fP4qezdY0cYSB
         QQuCvFH6hvCM80GKfjbr1JhVJQRu/wbGudLT7+ovcbWxs6YeSZM2puwRqTd5meuGpIwj
         jtJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=OrZSsFgz8YSYCzyY3m6MisHwmEHZxndakULq4rIEpuc=;
        b=pAPLOAJiQ2gn/ZI2EqE6P2M3XxIoHf9Ce+uj4933zOd0HjeW1dSv9oxPwOKU1kUM/V
         Cwygo41eCRTpkHcNagsGgMxvb111v5zW6zfnIAVEkF9ycc+O1JiTW6aGvSPYl2dq8+e+
         NDbgDGyfUqDZB4KQQyAO0yE3hGiHZ+MQ5SFxRFtxoshfBFev1lRzNSLxkc1PogCA/PCg
         X7mXdz/G2QZPr9BpZMA87Kzfrrz/64rHNsQ3z4zKu66RW4++W/b6dCcTtGw3aCnlCmnk
         KloM73HkQC/P+3t2MGudaWbCw8gJGpaHMTN3rR1GxJN64RRDIzXjavkQ2mj/mstqpxbZ
         VkVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JCee7g6O;
       spf=pass (google.com: domain of 3ew-kxqwkahqfvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3eW-KXQwKAHQfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id 91si166017plf.0.2019.09.24.12.33.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2019 12:33:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ew-kxqwkahqfvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id m1so1954837pgq.5
        for <clang-built-linux@googlegroups.com>; Tue, 24 Sep 2019 12:33:14 -0700 (PDT)
X-Received: by 2002:a63:6c81:: with SMTP id h123mr4758455pgc.132.1569353593673;
 Tue, 24 Sep 2019 12:33:13 -0700 (PDT)
Date: Tue, 24 Sep 2019 12:33:08 -0700
In-Reply-To: <CAKwvOdmFqPSyeKn-0th_ca9B3QU63G__kEJ=X0tfjhE+1_p=FQ@mail.gmail.com>
Message-Id: <20190924193310.132104-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAKwvOdmFqPSyeKn-0th_ca9B3QU63G__kEJ=X0tfjhE+1_p=FQ@mail.gmail.com>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
Subject: [PATCH v2] x86, realmode: explicitly set entry via command line
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de
Cc: clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, 
	Tri Vo <trong@android.com>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Rob Herring <robh@kernel.org>, George Rimar <grimar@accesssoftek.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JCee7g6O;       spf=pass
 (google.com: domain of 3ew-kxqwkahqfvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3eW-KXQwKAHQfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
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

Linking with ld.lld via $ make LD=ld.lld produces the warning:
ld.lld: warning: cannot find entry symbol _start; defaulting to 0x1000

Linking with ld.bfd shows the default entry is 0x1000:
$ readelf -h arch/x86/realmode/rm/realmode.elf | grep Entry
  Entry point address:               0x1000

While ld.lld is being pedantic, just set the entry point explicitly,
instead of depending on the implicit default.

Link: https://github.com/ClangBuiltLinux/linux/issues/216
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* Use command line flag, rather than linker script, as ld.bfd produces a
  syntax error for `ENTRY(0x1000)` but is happy with `-e 0x1000`

 arch/x86/realmode/rm/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/realmode/rm/Makefile b/arch/x86/realmode/rm/Makefile
index f60501a384f9..338a00c5257f 100644
--- a/arch/x86/realmode/rm/Makefile
+++ b/arch/x86/realmode/rm/Makefile
@@ -46,7 +46,7 @@ $(obj)/pasyms.h: $(REALMODE_OBJS) FORCE
 targets += realmode.lds
 $(obj)/realmode.lds: $(obj)/pasyms.h
 
-LDFLAGS_realmode.elf := -m elf_i386 --emit-relocs -T
+LDFLAGS_realmode.elf := -m elf_i386 --emit-relocs -e 0x1000 -T
 CPPFLAGS_realmode.lds += -P -C -I$(objtree)/$(obj)
 
 targets += realmode.elf
-- 
2.23.0.351.gc4317032e6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190924193310.132104-1-ndesaulniers%40google.com.
