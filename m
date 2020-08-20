Return-Path: <clang-built-linux+bncBAABB5HCZP5AKGQENE65VXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFAE25E503
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Sep 2020 04:01:26 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id l8sf4242395pgt.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Sep 2020 19:01:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599271285; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z/ET+ayYmEbp4d9K0NvTEuVwSQO9E3tWqH/+z/knWHSU854wDoNAzVcqVAF8k1CSys
         wMTWOZVUj5sRCG1Fmf6MF3MaFYpwzWKTySDm0HUfLcNJPuByJM2QW+96RPPwYFciFfnd
         MhV3/JuVQsCk2QjRXD5t/jd2qMmq+SUBjQgOE5CJ6nIrtKlUhH/Cl/rosBlU5K0iS8oS
         wcQ9VYPqASvJMY0E9Wg02BHtHguVy7ZkjfIRQvlJr88k1tdOoeyZMnt797ffNMSJxPVD
         62ItgPK56ssN/7wQ/5JJIc0HU39DWn58VUNb4N2y9j8cVG93NCbmFABXFCOi0iwweolR
         l+bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:subject:cc
         :to:from:mime-version:dkim-signature;
        bh=5nN5aVALD87KIDaEgzEY63C8Sq5cXNV5lLbmBW3KJ+4=;
        b=rGkF9HAPDnwJZWOGSWYJpJ07VVEjGIyqO9l94AtBEhwSD6MlGp3rP6po6Yj8oq4FNW
         HMDADeGPf764A7w6LQvUpbJ3VVdvzgf6ixKUqcGTBJOeGtpELIAAFdfK+FA94rcNsmmi
         /K1Ljk/GQ9hHfWoIRvEOJZy59jPZrTFcvvhIdykSpJcCV1O3OwROXvZXSX7bvRlhB7t7
         x03yW0U1kOzc2aHXsvOEdLTryVi/djuB1Vte9y2qqKZLM7vvA1uegvtDDuUHoajlXLi1
         vEi5QNwmdQA3Eak6u2pbM4bbWNJ8/UanUpF/qnHeedwzVFWUE/POIAaMIVc81XbevroH
         zBwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mail.ustc.edu.cn header.s=dkim header.b=Ekwlpd2I;
       spf=pass (google.com: domain of zhq2014@mail.ustc.edu.cn designates 202.38.64.46 as permitted sender) smtp.mailfrom=zhq2014@mail.ustc.edu.cn;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mail.ustc.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5nN5aVALD87KIDaEgzEY63C8Sq5cXNV5lLbmBW3KJ+4=;
        b=PguIQQddrEazdaaPGZsnwz1QxKBsWlDZmTfLMwYX6THGLQAG7fjyaMhpBcG2j3ixFc
         KyI0x/zImBITPJoHQj9/AknVmD59ZECw4lM+FBjrDKiVYkvtMmqAqsYjIxzakOdFJIJd
         FWRlOB4PujVR1cH7SCUHX2+x1tlHC2xzC9UWHFoxRIzxP+MWOQep48FQiz+S7XFZLM+b
         EJblB/pC9gv2lRjVYw3e6b/kn9sd0ubuyRo9dmwrjBz9EUVT+UsfMz8azGFeMfCgqQ3h
         4CxnZXSgVwwz/cM/30IIGLPevIANcQLlh3wj8L8KpfkMwq7ZJD7LidUc3CXqS1Cv8LV+
         NeEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5nN5aVALD87KIDaEgzEY63C8Sq5cXNV5lLbmBW3KJ+4=;
        b=M0rWw5TsbrqtVmDicUgrmHFsvnMbd2M6gizHhtd2++PyLr71pQTwoDr4MnpZkq0o2M
         EPvZw63wY+elr8JsKLDosi/Ulf4RWQHrfzxVtqJoKmitJ/mmytCCP4QcF2Y005xkiqyv
         gV7GWrSJQF/5sqMWHKqcQbCfU/EipH+d5hIl/0V0LPwMfre62x7wMqGvoUzn3jHujjwP
         /qSO6GEFhLxpBJFsaJ+X6qHEcZO8xQTC05cEDydwsF4z6W2Aqp006W04DVHai95ErK2x
         y7cBlS6nXa6sLO8mJRUR620X7Fgp7KV6q+RcSy98JOJOy6mov7fF7zqlAOK4WvQbO2ny
         Csew==
X-Gm-Message-State: AOAM531SvImZTgTkDXUSj+0k5Hy+dXzDuSFlICf/Q10XFPcuOpGabuB2
	Im+kIMeefwufeb1n8Ja7alM=
X-Google-Smtp-Source: ABdhPJy+tB5bmW4Ua6fE1ywQUIFKKdJGuLrkNqpXh632GOOHYgbgKCvVZjGpmWoKwix7GmWVr5g6tw==
X-Received: by 2002:a17:902:7c0e:b029:d0:89f3:28d4 with SMTP id x14-20020a1709027c0eb02900d089f328d4mr9727527pll.16.1599271284722;
        Fri, 04 Sep 2020 19:01:24 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8d89:: with SMTP id v9ls5421448plo.4.gmail; Fri, 04
 Sep 2020 19:01:24 -0700 (PDT)
X-Received: by 2002:a17:90b:117:: with SMTP id p23mr3347274pjz.67.1599271284361;
        Fri, 04 Sep 2020 19:01:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599271284; cv=none;
        d=google.com; s=arc-20160816;
        b=SmimhcrbcOF/UiJq5VKJkd9+1EZmXI7tuVCOFw1F5fXzvGB4a2Iht+6GjC8LxMI2yC
         8JP6t3N7SLoWZVQRNqLStCWafh9zD78VtGM7vuOJ3FeGK/Tx3NQFKFUqXWzfzWM52XGf
         rsAJHrYBnB0ln3/c6VjmNw7pJnetZiTZrsTkrD+gsMg23aMtsopoDErwYJ39iiSKwECC
         gmL4ythfUE12Uydb6gkMm6aZGa9oGPQNi9EXte6OtpLTNAapxBoFZF1cUOMUW7nj2zC3
         BTvb469b5bD0SIq2m62EgRF4zqu9lJIRMBEsEfVnhCOzlOSzgbrnnjENAFsjZUp9pRXM
         yMow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=WDY/ng54ptRjxNOdlrNswcBzY0b31g2Ob6RSh0Ebatc=;
        b=PeSaOzMSATSEeLGYPGSPywlLVsYuOX4yHC5S1YmdZCOwapRymVLJiDDX6kSOVxJwNH
         lqcsAvPVJ6wkHQW/W2k7AyQELDxr1yTIkdWex/TM0/4AM4hO4aKXDWc3nhoVTTF7Rjky
         Jlm5idbwEzBkPnHNyU0yjGHmNdMkZOWV36pvI471MLc2OX0BlVTkl4Sv2Eyso2RmTxhR
         z+k3pAEq7CVMeVfvowADFPpHU8QdRhQDRdBumDUr/ISphTePDZvpapzB6yZGhmsQ309w
         7ETzvsQUG8AIPUg4wwVymVSi13wGorklpSGzIOltCxq+n5W5WtL2eD/Ykkv0Xk0CPKJA
         GUPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mail.ustc.edu.cn header.s=dkim header.b=Ekwlpd2I;
       spf=pass (google.com: domain of zhq2014@mail.ustc.edu.cn designates 202.38.64.46 as permitted sender) smtp.mailfrom=zhq2014@mail.ustc.edu.cn;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mail.ustc.edu.cn
Received: from ustc.edu.cn (smtp2.ustc.edu.cn. [202.38.64.46])
        by gmr-mx.google.com with ESMTP id lj12si562943pjb.0.2020.09.04.19.01.22
        for <clang-built-linux@googlegroups.com>;
        Fri, 04 Sep 2020 19:01:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhq2014@mail.ustc.edu.cn designates 202.38.64.46 as permitted sender) client-ip=202.38.64.46;
Received: from localhost.localdomain (unknown [112.32.131.40])
	by newmailweb.ustc.edu.cn (Coremail) with SMTP id LkAmygBXcZ9Q8VJfUjcCAA--.4145S2;
	Sat, 05 Sep 2020 10:00:49 +0800 (CST)
From: "'Calvin Zhang' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: yhs@fb.com
Cc: mhiramat@kernel.org,
	daniel@iogearbox.net,
	songliubraving@fb.com,
	acme@redhat.com,
	zhq2014@mail.ustc.edu.cn,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] tools: fix incorrect setting of CC_NO_CLANG
Date: Wed, 19 Aug 2020 20:50:56 -0400
Message-Id: <20200820005056.3357743-1-zhq2014@mail.ustc.edu.cn>
X-Mailer: git-send-email 2.18.4
X-CM-TRANSID: LkAmygBXcZ9Q8VJfUjcCAA--.4145S2
X-Coremail-Antispam: 1UD129KBjvJXoW7ZrykCw1fJr1fKrWfKr17ZFb_yoW8Aw18pa
	n0kw47C3y8trW0kw1kCa1qqr1UJa18tryqqFyvg3WkZF4fCrn2vrZ3tr45KF43uFsFya1U
	ta4agryUX3WDG37anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9I14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2jI8I6cxK6x804I0_KFvE3s1l8cAvFVAK0II2c7
	xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVW5JVW7JwA2z4x0Y4vE
	2Ix0cI8IcVCY1x0267AKxVW8JVWxJwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjc
	xK6I8E87Iv6xkF7I0E14v26r4UJVWxJr1lnxkEFVAIw20F6cxK64vIFxWle2I262IYc4CY
	6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr
	I_JrylYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0E
	wIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x
	0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2
	zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF
	4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r1j6r4UMIIF0xvE42xK8VAvwI8IcIk0rVWrJr0_
	WFyUJwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJb
	IYCTnIWIevJa73UjIFyTuYvjfUFYFADUUUU
X-CM-SenderInfo: h2ktjiyru6zt1loo32lwfovvfxof0/1tbiAQsHAVQhnwvOKAAesV
X-Original-Sender: zhq2014@mail.ustc.edu.cn
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mail.ustc.edu.cn header.s=dkim header.b=Ekwlpd2I;       spf=pass
 (google.com: domain of zhq2014@mail.ustc.edu.cn designates 202.38.64.46 as
 permitted sender) smtp.mailfrom=zhq2014@mail.ustc.edu.cn;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mail.ustc.edu.cn
X-Original-From: Calvin Zhang <zhq2014@mail.ustc.edu.cn>
Reply-To: Calvin Zhang <zhq2014@mail.ustc.edu.cn>
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

CC_NO_CLANG should be set according to the value of CC after overridden.

I have linked /usr/bin/cc to /usr/bin/clang and I built perf with a gcc
cross-compiler:

    $ ARCH=arm64 CROSS_COMPILE=aarch64-calvin-linux-gnu- make -C \
        ../linux/tools/perf/ O=$(pwd)

It worked well. But when I tried to rebuild that with FIXDEP=1:

    $ ARCH=arm64 CROSS_COMPILE=aarch64-calvin-linux-gnu- make -C \
        ../linux/tools/perf/ O=$(pwd) FIXDEP=1

Every .o files were rebuilt since EXTRA_WARNINGS was changed due to
false value of CC_NO_CLANG. Things worked in first build because submake
of Makefile.perf inherited CC from first make and CC_NO_CLANG was
rectified in submake.

Signed-off-by: Calvin Zhang <zhq2014@mail.ustc.edu.cn>
---
 tools/scripts/Makefile.include | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/scripts/Makefile.include b/tools/scripts/Makefile.include
index a7974638561c..dc887669828b 100644
--- a/tools/scripts/Makefile.include
+++ b/tools/scripts/Makefile.include
@@ -39,8 +39,6 @@ EXTRA_WARNINGS += -Wundef
 EXTRA_WARNINGS += -Wwrite-strings
 EXTRA_WARNINGS += -Wformat
 
-CC_NO_CLANG := $(shell $(CC) -dM -E -x c /dev/null | grep -Fq "__clang__"; echo $$?)
-
 # Makefiles suck: This macro sets a default value of $(2) for the
 # variable named by $(1), unless the variable has been set by
 # environment or command line. This is necessary for CC and AR
@@ -59,6 +57,8 @@ $(call allow-override,LD,$(CROSS_COMPILE)ld)
 $(call allow-override,CXX,$(CROSS_COMPILE)g++)
 $(call allow-override,STRIP,$(CROSS_COMPILE)strip)
 
+CC_NO_CLANG := $(shell $(CC) -dM -E -x c /dev/null | grep -Fq "__clang__"; echo $$?)
+
 ifeq ($(CC_NO_CLANG), 1)
 EXTRA_WARNINGS += -Wstrict-aliasing=3
 endif
-- 
2.18.4


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200820005056.3357743-1-zhq2014%40mail.ustc.edu.cn.
