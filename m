Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBCFL4CJQMGQE25EXSXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id E8EAA51EF1E
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 May 2022 21:10:01 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id h69-20020a638348000000b003c6c29008f4sf444498pge.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 May 2022 12:10:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652037000; cv=pass;
        d=google.com; s=arc-20160816;
        b=z1uSg2iqHwNq39f0731qLjA8DAEkC1GL05z4Iyi4GBG4rsadfVJYGagxAxgZ/g44L9
         YI3W3sj/2dXJElRN78jHMvVrIfIHvyqnqzXidrisHIlBrveFTbdYQ1Tuvp1mbKB4DdRZ
         KnHiaEimzRXfnBhu6YPl7+NFiDoLSkkqfbZfDKMN3b/Fb4uo9UILgJVaWnbZcXvpJFMY
         Gux69k9gbMtAKp/9azLhkr+Jc0KZqK2DlWzopxJ240Yj3FZoNz3rE33VcAtQZNjTH8VW
         9iL6p6I652+WzoJoWgiJs5YYxdHfPkWNm7tA7hdDpei5KXIHLtULBnmmz7sOPq9lrVcG
         N+Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=nNo9k7Z4kL1Hz68XJu/nQO3bxhIcDaMi93dZ/dDZKkU=;
        b=xgluyo4mTGxaBxlb4RXoyz+KiF+FSWzRaPsDQW70DSBSKEnwupGukz3imPCulzuHVy
         /12MEeGEE8l5qDyT+CPgVUDmuMuqFCH7FT9yPOSsgz2A1qLJR9bpJHu3nYRl0jQe9+D4
         RD85ko2ar6egoY6W8B1D4iKrwEa7UyPTgUYjLR1dZjqtwjgtPe/vKFdBAn29aRB7Q57e
         aSbz6fz1wUiNzp+q/Z75IUFIousPywD5ARs4IT3RZTC+mQAgzZwzfVfWouBIbFEtqeSQ
         qK2jnkpw5U2p3P604t6FhCyE6JpVOlvBnnrNlyQnL0501D6/bLE6EQ6PrXvEHqbkzy8S
         tupg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ZpgxZTqZ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nNo9k7Z4kL1Hz68XJu/nQO3bxhIcDaMi93dZ/dDZKkU=;
        b=bT195j0TAL+iuM9oDU3xkGXyvSbZrYV+MIj1RUZpi8tdZ0Gex/cLeRsO0148BND1LX
         M73Fh2U/gDjyfDsie3lmTGdfxrk5qDfjOVaPCQJ7s5e4ohsUSpLIXnHYp1FRh34ycSOv
         slkO5GMLWeczISpM3Gi7xR5tL+YyWnHquyKjM1r3aGZvMjOp49yLxUSLL8VGSzhwIep2
         K/d9JfKBJt2URRQpEp17Xrf/nqZomfYh6ONBZSaxwLZTlF7A95AaX3HzXq/OltHRiqMf
         4fAGgZz3kiUGc73LR1K6u+9mBw93xt8XLT6ih7UlHVz8eybXRskLeLG3bEeJdH5kf0Uj
         VYLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nNo9k7Z4kL1Hz68XJu/nQO3bxhIcDaMi93dZ/dDZKkU=;
        b=a9ftUWrU4hDk/AjGkc6K+JzIiYBJvlm5Ruy9D5wktYIDnaNZYacCN++DRTYut5nMB4
         Rb5dphY2WnWV7CvyZhnFwSLdkf6mdcwba1N3edpQAKNLhBI4LTS8SR2mWa2su3qWvuUM
         6x2DoOC6LY5f6/5B0Z4CPMpIG1eGvvoG8JmS05wjIgiyA+DvHBsIwpJse+XtFjZeLYEy
         /UGXmcjmMLvtuurqZOlAEKFFsuAHliLrHndvCukzpEfizQ+ucEfQRCBtevbO1rCKC+0X
         QozQPog2y6fEELuGyyO0dv1mzS6k1g5G4RfHKgX15HVQQIJ7gxqqZV6SACBuhq9OJnbv
         Bk2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532P9qoQBe0mC1pIX/aIvRY9S1Vg3+6dtzJQu0KS9T+Eq2nqFarM
	NR/GnuhI7R0Up0MJe7foZ6U=
X-Google-Smtp-Source: ABdhPJyiS5uH/Bn0fovN58erbBWw7sxf1Rfdz+k1xAOEb9jwjgI2/U7Q5G74FevYUbyUCATaO90mCA==
X-Received: by 2002:a63:fc19:0:b0:3c6:92cb:573b with SMTP id j25-20020a63fc19000000b003c692cb573bmr4477426pgi.443.1652037000363;
        Sun, 08 May 2022 12:10:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8a81:b0:15e:a8a0:2a7c with SMTP id
 p1-20020a1709028a8100b0015ea8a02a7cls8657953plo.3.gmail; Sun, 08 May 2022
 12:09:59 -0700 (PDT)
X-Received: by 2002:a17:903:40cb:b0:15f:c1f:5f87 with SMTP id t11-20020a17090340cb00b0015f0c1f5f87mr3014597pld.83.1652036999689;
        Sun, 08 May 2022 12:09:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652036999; cv=none;
        d=google.com; s=arc-20160816;
        b=pejn2HTFjuThsFKxmNBGn9G/5s3Fkic+iwTv2+W5OgZUZarRLJChLl+pcgZsJ8wswd
         yhgx0y7QGeoXEFcHIMOU58YS2dku7YwKweb3CF2hqMW9PHqBzxkj8UGMnxzZEtCdaon4
         NpjQ9RNBeIhkKXxrI7jFOwwBlE+FFlcSgCdNfXWcxW7AyUuk22QOhJ2eVBE55Hz8sJ1d
         ub2RszkgX/y09iqpt8RUIpWQPaE9a4goGulDm8JTE7mZdRmLWGfRv/QuhuxW1I/0wf+y
         dlKss0jAiBATZ4Z0bnxGicWbk5C+7duuSo+bjq1ZCeYo81vq/PUekzChVLwv/bxxuO0Q
         FotQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=tcr+72ZYpbdDhhd7b5O3qNkSWb92WQKtLNqtDxevyAs=;
        b=kRDimk6FjVUP4OS+AJRr+zcYAVUTjXWw8AOyv9S1CJ6ba/Y3yT3zvxKxoBw+VxZQkX
         HaHsadjDw+TNuQ5Iy042ihiroEdX6tk8YSZpnx+sNimVou3zq0E9JmAQoOWJjUPTeTmG
         +g04/WyMVRkMmRrFxooNfAZxwYaPUEujd8ycnZkINKVu+KrgPTDhsCcB9BEIK/lFLmXB
         6S3dxB5ueZEctS7s9ySts4uGCe98Xzq6gCWwe6u40VgYpZE34uY0RzKZ5Atz3Xc4L/ke
         8ZYTysg3vgQqUuWHtppxoeagbEovpOIBWSqKUOOMrHOR83u3ca/t2RJnsR6t+JvVTDzK
         gPNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ZpgxZTqZ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id p41-20020a056a0026e900b0050ad2fd0312si591113pfw.5.2022.05.08.12.09.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 May 2022 12:09:59 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 248J8qSY030019;
	Mon, 9 May 2022 04:09:04 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 248J8qSY030019
X-Nifty-SrcIP: [133.32.177.133]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nicolas Schier <nicolas@fjasle.eu>,
        Peter Zijlstra <peterz@infradead.org>, linux-modules@vger.kernel.org,
        linux-s390@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
        clang-built-linux@googlegroups.com, Ard Biesheuvel <ardb@kernel.org>,
        Sami Tolvanen <samitolvanen@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v4 11/14] kbuild: make built-in.a rule robust against too long argument error
Date: Mon,  9 May 2022 04:06:28 +0900
Message-Id: <20220508190631.2386038-12-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220508190631.2386038-1-masahiroy@kernel.org>
References: <20220508190631.2386038-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ZpgxZTqZ;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Kbuild runs at the top of objtree instead of changing the working
directory to subdirectories. I think this design is nice overall but
some commands have a scalability issue.

The build command of built-in.a is one of them whose length scales with:

    O(D * N)

Here, D is the length of the directory path (i.e. $(obj)/ prefix),
N is the number of objects in the Makefile, O() is the big O notation.

The deeper directory the Makefile directory is located, the more easily
it will hit the too long argument error.

We can make it better. Trim the $(obj)/ by Make's builtin function, and
restore it by a shell command (sed).

With this, the command length scales with:

    O(D + N)

In-tree modules still have some room to the limit (ARG_MAX=2097152),
but this is more future-proof for big modules in a deep directory.

For example, you can build i915 as builtin (CONFIG_DRM_I915=y) and
compare drivers/gpu/drm/i915/.built-in.a.cmd with/without this commit.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---

(no changes since v2)

Changes in v2:
  - New patch

 scripts/Makefile.build | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index c2a173b3fd60..8f1a355df7aa 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -374,7 +374,10 @@ $(subdir-modorder): $(obj)/%/modules.order: $(obj)/% ;
 #
 
 quiet_cmd_ar_builtin = AR      $@
-      cmd_ar_builtin = rm -f $@; $(AR) cDPrST $@ $(real-prereqs)
+      cmd_ar_builtin = rm -f $@; \
+		echo $(patsubst $(obj)/%,%,$(real-prereqs)) | \
+		sed -E 's:([^ ]+):$(obj)/\1:g' | \
+		xargs $(AR) cDPrST $@
 
 $(obj)/built-in.a: $(real-obj-y) FORCE
 	$(call if_changed,ar_builtin)
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220508190631.2386038-12-masahiroy%40kernel.org.
