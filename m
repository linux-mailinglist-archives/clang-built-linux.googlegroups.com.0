Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBTPXZWJQMGQENOWQ55A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADFE51B8B9
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 09:25:03 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id bz15-20020ad44c0f000000b0045641657fd2sf2545879qvb.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 00:25:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651735502; cv=pass;
        d=google.com; s=arc-20160816;
        b=oiPs5B9rBdKnf9EMbJkG2hg0YxbdyN8yY6FtUXlAAuwoZx9peSsIN2tycQNz/W9zRg
         8VzFZgI44RLs8mffQVkwbSRQbNso0tG3yxCSvojy0OwoHmV0i/0GH4B3jvl7K1AeV/+6
         Q+HQaRgbq+HbnpHwNLHqLSajCfwowLZwB1lWil10ieFHrAWUyXp7xV8T31++W9fb1h/t
         GD29W0atij2jruNcNoPz3Yun6t9g0EebHQn8953vfiqD+d7s4qn+SEAeze9AFuOb1IZ5
         05c7XWjherUT4ys0o8ygfnLlUahmGOHDbVgDwGEwgyxM0QdJRdRGafJzX6mX7gihozps
         KlTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=xS4qEkZg3XR4EOe8biRd+PCC2YG34WgOYZmvJ46teQ0=;
        b=gR5hldPytgOET1O5KoSSq49w5owJAPP1oETcjM+amvKSF6DAxtZ7WNgcVqzWgnkcXf
         OmnVv9N/QpLJAtYBgPPqOYMmcD45qTKwgds77lkd3rpPWCnBYE4o+ua28AETMVNDYzB8
         A3Xi3KWOkPaMOnozbrHKfd63vkMuCEpRcGxrItFma9RyBaGuwP5SbKFInHHoY6nayGQY
         rM1eQ2AEA/3kpCyZ8mwAV6TJrETPRimlthwmxmC6z7BAn+vYaytR1jwKDuvhkEChY+qX
         yEqH/6OlQ0gmMnwJZWJYA+X+iX6sGo5yV5WCjwDaNbwoDoq52xgfLrV0a3iBGS44PeN/
         bHUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="B+r/E+5a";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xS4qEkZg3XR4EOe8biRd+PCC2YG34WgOYZmvJ46teQ0=;
        b=fdDVzy/HqdXB904yFysIc1koMLanejqDqcDcfqZxOiO7ebOTi7HtIOSVTIvIAeTM0s
         n470gpUL9M1XiZJ60JAVU/68pxbth1AztV4mIGC0iRgCYNbhQKrDUhqSM7XIJWYtG5El
         9L97iv7mSSAuo79N9QmqbV+gTZnlcgTDfGwV3iwSBpCf3RDQpEpKlesoRo3V+kQ5QOMp
         p92mpL/rileGNQ6/qH8+qW6Ec/8nQQUuwr6lD8+tNSF7jNzLBNk2h9gEB5oi3r2sGRMH
         txRdRg2SA9CS9vzFzwjZMadxmsq3Qb0GDpG98FxYCcSuobUNUuDZk6KQijpzXHzgzhez
         PrKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xS4qEkZg3XR4EOe8biRd+PCC2YG34WgOYZmvJ46teQ0=;
        b=VSn0M+A5nWFiICJ8N3jMvkv9qG2vsxFpKhzliV1hUp85xFyolujU9wQ9RyC1xpWirP
         yirxg051t7OC9YH/VYl6LXajT+tb3310Ufs7BeivUs0ySxE3yHOd1zFPavH8NlALCHak
         DGPJFcj2OWTGIAFEACN1wpQVKVtC+d0jEbxOMGsRE4M/ZzVTymyn1Pm9ld1lhunlAnhd
         b3mprImG49WsdHboesZycCeDqPYnAR4y3OMrrOrFWJpb5x7bxt/xDmsLiJpz/uP3VmVR
         R5ll1I2WaLhmVKwjeJphQKEec6ihLa279kbGqrO0qhoV30LZauMaRTgFt/+5A6BXpnKW
         np7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315kkHcHJnXxJL4JqddAY7E/XnTsaH1y23XoyFNWxBd6bqqn9v+
	rBgIbx7HC14LaWadMq4SseA=
X-Google-Smtp-Source: ABdhPJywHuTfTHMV8EvwvB4PGv7Y2Y3nZSQuaWKWV1+C3tkqJIebe6q4rSsNN1ClxoIlspwA8S8W9A==
X-Received: by 2002:a05:620a:d87:b0:67b:f949:1ee6 with SMTP id q7-20020a05620a0d8700b0067bf9491ee6mr18579865qkl.140.1651735501965;
        Thu, 05 May 2022 00:25:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5c07:0:b0:2f1:fe81:f8f3 with SMTP id i7-20020ac85c07000000b002f1fe81f8f3ls2793442qti.3.gmail;
 Thu, 05 May 2022 00:25:01 -0700 (PDT)
X-Received: by 2002:a05:622a:1483:b0:2f3:81dc:3221 with SMTP id t3-20020a05622a148300b002f381dc3221mr22605592qtx.460.1651735501590;
        Thu, 05 May 2022 00:25:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651735501; cv=none;
        d=google.com; s=arc-20160816;
        b=vtWs+wMrDcH5XlkS4awESY/TODbsyu03h/zZWhKLASr/pF0+GjJzcMHN+lRI6ryydF
         yPHJ72ZrxECWz0UzYZTNFyc6vvrQtm5zVgWQfILVUkjpX3R3XjI8JNhAqvCn5FlZY5Rq
         ARQX2QORkJwqDWedQ5iYNTk0DfFDLuIwATnPhBk0CQ88wU6WWn5KIb2BZMgAqVNdrUXi
         /qIsJRpgUiscpqvYArusMx9ZWSt+73KoLNzY/sH7p8KsVQBorWPLnW/WtecQ354cSZl7
         ARHJtcXm1XXu9gJRQlycpMN37KznUMs3dEHaX/8vkelklz4T1MlLuxnt0mhnvN7816pl
         x2+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=xE0zb58nWCbd4r50BnRJTvTiW15HyULrsFF3iZrvMeU=;
        b=UFDIOywUJ5JSYEjUcQgy4D0nScgPLbHHzAHb5C21n8l53wZt30MadEp+XMpD+cNSDS
         IPfKEAgXOA3wZbz38doMUxEwo1aaMAGzu0Efu3je1ctyuZ6VlWXRiGbUehmWViqW/r+8
         IffXpsFW+94hKSkoxeUmZuKmIeKyJJBalNZlbEy3XBzBKFsFT5HGGPxAhvIZLg5MisbX
         3NypqDi1KlUMZQ/ZhabObT1XcrjaSRNzXee4tKz5Whz3FmzDjAe1X1q8XYr0oXU8MOrE
         h2BUfR9x2nxXZRJVYJ1xt9Z+AELWyKpJWYDhey6x244PY4N9jr2Dq/bJMeY5xvYRmJaF
         V37w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="B+r/E+5a";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id r13-20020a05620a298d00b006a0284a0761si41110qkp.2.2022.05.05.00.25.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 May 2022 00:25:01 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 2457Nenw019426;
	Thu, 5 May 2022 16:23:56 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 2457Nenw019426
X-Nifty-SrcIP: [133.32.177.133]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
        Nicolas Schier a <nicolas@fjasle.eu>, Ard Biesheuvel <ardb@kernel.org>,
        Luis Chamberlain <mcgrof@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
        linux-um@lists.infradead.org, linux-s390@vger.kernel.org,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v3 14/15] kbuild: make built-in.a rule robust against too long argument error
Date: Thu,  5 May 2022 16:22:43 +0900
Message-Id: <20220505072244.1155033-15-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220505072244.1155033-1-masahiroy@kernel.org>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="B+r/E+5a";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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
some commands have a scapability issue.

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
---

(no changes since v2)

Changes in v2:
  - New patch

 scripts/Makefile.build | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 0436ff94800e..cea48762299c 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -370,7 +370,10 @@ $(subdir-modorder): $(obj)/%/modules.order: $(obj)/% ;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220505072244.1155033-15-masahiroy%40kernel.org.
