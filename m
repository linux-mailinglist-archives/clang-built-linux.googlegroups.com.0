Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBCPRS37AKGQEEN6BOYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id D94822C95C4
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 04:29:14 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id c1sf294656pjo.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 19:29:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606793353; cv=pass;
        d=google.com; s=arc-20160816;
        b=ENqw0NWDv/3l5ZLWxh/vX89BDSZdrB4Mib+IYYanhhYHXWqJHlHRdyFoLFcdtUHthz
         nMy8wSNKbHnaHo9IlUGvNyTHhBfv/SQdhjvd3gF/X36JRGkyxSxsi5veIxg56Zi/Jvpi
         qwmNmwPXK3w/rxZMTsU4GuBA0KiHXemfpVFCu6v9fWpafkVCy65YA/b5JeQ1RVQZfNwT
         kL3F4W6D8rNiOVGkqE5dE7Z23jfEfERT9FBjbqQFM5/86zH6eubuEc9iL+7pdTWXqd/W
         G1sycp1klbCD2HqLfD/kZxoZvuwHC0RIy9vGPpyc3tgLeIZq2HkhV/tIn6Qje4HlyQcF
         EiFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=gwfTn0lkevyriw/60zr+XkMpSpw4c5f3dnJgJJDVtRc=;
        b=YXDunoyO5HduI8tf/W6x/ZqFkBtKP9vjzoeuaQGMQw2akYD4LdHrMuCzAqCka18/cU
         Hzvg4CIor3K4eov+VI5lycQLEz7YtI1Ap2z0KLmItOmXVgUqodMfm5fkA/pKPCjWH3dA
         l9JnAlXUtW1zp0DpkqWXe9nhTuk8llV7Hv06gua3vmETYvvzLTQjgL9DpB2DtGjYYFcg
         7caNvM4kXVUnh2XZCqnbtP+0yO5cZSZ74DWHz3R4xGhN1NQmpCumNZpBhNsSjRLgJh0D
         WWTxWdQltV4zpKczDpQaayVYpjEwmwkgyyYPeSWCL/453FZa7wO/4Qt5R7ZL5hfv95r2
         6MJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1mKHFrmh;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gwfTn0lkevyriw/60zr+XkMpSpw4c5f3dnJgJJDVtRc=;
        b=p6g6tJUAH7jkVaUc9PuysbJZjcA2D3GwuZPioi40ytp5Ny9hqaQFKTDdjnQpEMwd6d
         Dvtd74OEerRCaO6+k2nGc4MQYivs6yBQV/ONkVQs9iZztj5bfTGRJpt+ooz2tf2toXXi
         ERSdqOexSs81myzy8fsFn0dGQqE0cZ6ql509UV+kih6DmVD035tT7Z1gK2XIx/2JPmMC
         kEL2M9aqaZLmI+HmQLpHtSqBjoaL6ALkN4XNkh78+i6uIbFPrO1fX8aHovbtXgoQifyB
         8c52w6UGOZyMLfeL8Zltw79Q36e8Cm9fAsysjcG4/BsXrIimGKr1xL7JsakhrL1t0V4c
         ZMjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gwfTn0lkevyriw/60zr+XkMpSpw4c5f3dnJgJJDVtRc=;
        b=ighXncCX/PQKPv9tjxyY2y7ynEgE9cyL1eTnVQkqb6/vhERyQt1aj9/vBFgowgP19d
         cnYIVpaNahrWNuZZgSHMCxeX0CMHE8gvkH+kwhoZp9qpdakEQuWsrDHf3lQkq+kSiiwS
         im0pIzGKe2CFKj0t0CxYTupCAcSypdd9Dj9PKcL26ml/6Lk+rbEszREcXURpKTCUF/dV
         Abxjt0skaTQgBpAO8oV+ctHtQqnyRVGqH+7vvgmCZ1i0xrmSSLYWuIxyrrvarkEtoeBi
         heRW7lc8AmfLOIfpN2r/XVCPkB+V0hvKvb7Fgt2rAbTU6VcLRRFOgAeCw0kKl3Y6hndK
         PtlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530WUcV7Aw+f4eqxDGTVPUxyjKixEUJC6i9vSC178e7I+yav2ZWD
	OciKjLsL8unqNFe6h4JbFO0=
X-Google-Smtp-Source: ABdhPJyD8dXN+BXIFwaCkAbci62H8YMxnuGXDY4qHPDfw1j3UaTaexkk4bXQcnWEgOPFfxCC7t39qQ==
X-Received: by 2002:a17:902:8e81:b029:d9:f1a8:54ac with SMTP id bg1-20020a1709028e81b02900d9f1a854acmr798564plb.69.1606793353627;
        Mon, 30 Nov 2020 19:29:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b23:: with SMTP id 35ls150005pgl.11.gmail; Mon, 30 Nov
 2020 19:29:13 -0800 (PST)
X-Received: by 2002:a62:1896:0:b029:197:491c:be38 with SMTP id 144-20020a6218960000b0290197491cbe38mr623470pfy.15.1606793352925;
        Mon, 30 Nov 2020 19:29:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606793352; cv=none;
        d=google.com; s=arc-20160816;
        b=Ymf7TGr7f5LGnEBLDAf4myfXHIAaS7I60LMDTDo1KKLdbM2Uf24CzvMBgIK6hEj2kv
         yICau69yDyUlFZ1p/WpQat9L491kTEAN/ZpTIpK4VQDHFEkwThkPFlLfsqiects32gFo
         DW9LXXymYfFCSoo/b2/tHAzNqEG/G8EBo2NE/VdK9sW2oMrWc4lPNV6UtuGMMf3ZPH/C
         V8Shf6C3/gpKEaro1arCLICyVrbXIhkXdr6ZoGljXtzt4UjbesMeY1CpcLPNuRZjYO4s
         N5vUoBsvXsv9nxxFk35oV6pcXFNSZ6UwNhcmBiAwk1LBt2awsTTskxr25ryF1zuC2Myi
         tW0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=W22SM8sNj3s46nVGz0HpqYpbIii3yOJZwAwL+xZLxIk=;
        b=ZCmtbxqTrVIO455sRB9Ougu/Jk2uymh3MPBp8DxwXkn51x1i98DFHpD95o33fTqep0
         VHTGXu9xJGQUWmq5+B9H4JlU5DsjNcDw/s9B3uaj4WfZt4hAi/6IpqbUAciKfS6gV4xE
         tt1EwtKdGzFL79oZZzqeI4+gGTZnmJ/qfp3xO5qgy9oje0ThZ44ji1myTYPywvhL1xZl
         scWRQOQC3eCqi6dSenh4QM9alqj4eV0IVFsFjLR67K1b9ne6KQ1Gi/lcH4fah9fdf38b
         TxPMfnBzsmv9gXoPoTG1YVflwlGN4mV9n4ZVrLTaf/TdwUlt6lBDKajqD7g7+Ug4S+vS
         M0HA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1mKHFrmh;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id q32si24070pja.2.2020.11.30.19.29.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 19:29:12 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from localhost.localdomain (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 0B13Roh5015494;
	Tue, 1 Dec 2020 12:27:50 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 0B13Roh5015494
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Fangrui Song <maskray@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Changbin Du <changbin.du@intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Peter Enderborg <peter.enderborg@sony.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
        "peterz@infradead.org" <peterz@infradead.org>
Subject: [PATCH] Remove $(cc-option,-gdwarf-4) dependency from CONFIG_DEBUG_INFO_DWARF4
Date: Tue,  1 Dec 2020 12:27:48 +0900
Message-Id: <20201201032748.486928-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=1mKHFrmh;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

The -gdwarf-4 flag is supported by GCC 4.5+, and also by Clang.

You can see it at https://godbolt.org/z/6ed1oW

  For gcc 4.5.3 pane,    line 37:    .value 0x4
  For clang 10.0.1 pane, line 117:   .short 4

Given Documentation/process/changes.rst stating GCC 4.9 is the minimal
version, this cc-option is unneeded.

Note
----

CONFIG_DEBUG_INFO_DWARF4 controls the DWARF version only for C files.

As you can see in the top Makefile, -gdwarf-4 is only passed to CFLAGS.

  ifdef CONFIG_DEBUG_INFO_DWARF4
  DEBUG_CFLAGS    += -gdwarf-4
  endif

This flag is used when compiling *.c files.

On the other hand, the assembler is always given -gdwarf-2.

  KBUILD_AFLAGS   += -Wa,-gdwarf-2

Hence, the debug info that comes from *.S files is always DWARF v2.
This is simply because GAS supported only -gdwarf-2 for a long time.

Recently, GAS gained the support for --dwarf-[3|4|5] options. [1]
And, also we have Clang integrated assembler. So, the debug info
for *.S files might be improved if we want.

In my understanding, the current code is intentional, not a bug.

[1] https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=31bf18645d98b4d3d7357353be840e320649a67d

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 lib/Kconfig.debug | 1 -
 1 file changed, 1 deletion(-)

diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index cb8ef4fd0d02..7f80c25497a1 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -258,7 +258,6 @@ config DEBUG_INFO_SPLIT
 
 config DEBUG_INFO_DWARF4
 	bool "Generate dwarf4 debuginfo"
-	depends on $(cc-option,-gdwarf-4)
 	help
 	  Generate dwarf4 debug info. This requires recent versions
 	  of gcc and gdb. It makes the debug information larger.
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201032748.486928-1-masahiroy%40kernel.org.
