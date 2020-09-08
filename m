Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBA4G4D5AKGQEHWPK46A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA04262283
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Sep 2020 00:17:41 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id s141sf261114qka.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 15:17:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599603460; cv=pass;
        d=google.com; s=arc-20160816;
        b=AiRSwDFh36XSxN/g4QkbS3YI270GWlkSNQCk4Nvq0Bc5ME/gCGEqjOuxHQBfvnKxEU
         ADNaHi2bnYgh8R7oClDQpc0HzVbI0BRVLx5gJCQIB8HiN8m46qdpRwPW3Ve2lLjO8IOd
         +2gwSCIe7a1UZNv+4yz8lc3L0JG0kQe9B7fMKWmQl1lLiNms8kr+OY8BSA9CnishjAH8
         rLPt2sU9s7hFcnY2BienkFHyUDOLiHcw5wRfRvr7KET6uH5aXHeutAAyGSTluDn5Fxct
         MLbQuR71kfWv+kakBlxFQjEEo5aQkh3VdjWxT3Cf9M3scxtEnbnxvjtJFnUM+d7cRnQd
         qaQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=2hI7Qg2xFLeSDAsEh+cf38S7QsNkrkFOX+FEl7sNrlE=;
        b=TbTDp+WYGSjKeary1x8omlLeBk2H2f8YoZJU+/pw8kD9hQeg6gdsp+p2qJLUWRhiBS
         8Af03iqdX7r4MSdHEvnqyN07fQvV3gw6l+Y7hevBGu3il23gM70JqvxuCiJSFzq1JcfO
         L+auWp3v86VXVCtIuGhYHn4Y+vtPJItjwjPpyG1T8PXBeOrUnCNQwrFtjKQVv4JmInOC
         4zl0vSeQ3IerNb2096cliUgSEV/PNJlFS6H/5oBXuxMv3Ug/jiMnR78Y0n/5A1G8gZh9
         jDzoU/afDqjT8pD6R64oSuBDHmEw2QbbKbYwnn17dlydwtQb8dzkFG9PWAxzVqtEzUDe
         PIYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="LQZcLC/N";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2hI7Qg2xFLeSDAsEh+cf38S7QsNkrkFOX+FEl7sNrlE=;
        b=BX3pvNCSKdJMxsefzJOW1UtYy4cANVbhBUFnlQRbQCT1P7Yj1+8TjaJU7h3p0YvALJ
         l7ac1AFaLD5qqjkMlhzmDBNoqkBdp5UBxsLo3vxlv71iyOprNEjtE42JNyEog90HKhA5
         Vjp432pa60bU7GG4vMGfS7XT8iGQVSPbH1ay5syvpLgiWLz9+YMIokMa6oZF20MuPYT1
         vL4ZCkeDok5gbQF/O82GmJjtQZlnWkcho52kfG2N79rl1YPjgZc/EKGHAGhlR17AJczF
         f41ULUh5I8e2cbMGDWvn+LEwlU85TaaPnKe8x92/4Pz5jKAveG47fhywK5osc/86Nkhn
         6atg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2hI7Qg2xFLeSDAsEh+cf38S7QsNkrkFOX+FEl7sNrlE=;
        b=aIHVqxBj4BHDwpRC8b4m+4pSrbvGy376xtMy9zUO1EHq3QRFMOzOlVhy+pro8PIDte
         Lk6L8egXM0uX3dqdQx/TaGfAqp8vSRBsFQRMw+KshcPGxk1wpaCKTz4QLa6hdaXKQ3N+
         8Hp2l8B08QWL6Gc2+PdbL5jruJGcgqGnHZEKFD1JHg6BdVZ4WXSISqzwwc83AgY4UmUL
         xXnVP49OTd1DhAmH4i99SjByHOfO4AzbGnjg9s85v58dnb2SpTsx1XbAwC2TsrFDvq8q
         F4YQKT92Nz76Y9FlhK+FJOhv4O2TLJy3n/fu9R8k5la2yTl6jw4lifKlbowrXnvpIAT+
         T2TQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530D2WGaO+Gk5kBai3kcvc1wbVyWXkog1dsy7KILTQ7gA5c+yKqk
	1Q7/OqqqBlVBAbVdNS+EddE=
X-Google-Smtp-Source: ABdhPJxKndQwjdYMDKlIZkHK3B8UvtoBsGw9edcOfyac5cd41w/ie1C4AVFp9DnoaTzhoTmJ9HEE5A==
X-Received: by 2002:aed:2c06:: with SMTP id f6mr598500qtd.362.1599603460058;
        Tue, 08 Sep 2020 15:17:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5dc6:: with SMTP id r189ls382416qkb.4.gmail; Tue, 08 Sep
 2020 15:17:39 -0700 (PDT)
X-Received: by 2002:a37:b783:: with SMTP id h125mr723116qkf.302.1599603459627;
        Tue, 08 Sep 2020 15:17:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599603459; cv=none;
        d=google.com; s=arc-20160816;
        b=ejKuiDG8PBexduFMnVb/o7okzDgPhAvRdXdnOyiECWvAkOolmDiYG5xhO3/cIRMw3+
         YXyjufVqGZykFhVeUR+XXcTkjMDZtdV9paJtgPDTr7YmGvH6Q8uQUCXBrmShJ+MoNRBr
         KdP83SiUMEFfAcxmArfsNNx+DWGqkTLfaENU3NvHjduTTsBLHBVxbjAZpO0eF61B3SIy
         obYFCMl1ZLpSfJ83wE2DwNEuWd6GvEwQGKyfaCM7CZM/eeyjAUQ3R2Gwm3np+IyKqiwO
         VKGNKuZ+DB710sUpa52Md1shpfz7aCwi1OzS7XlvW7tRX+vz7+wJlIE8ivxCSgaLCet1
         6W7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=WB8vckX/90tGacfzSunXHhuYCkqvIfPGjxJ91cYrgWg=;
        b=GfNrAP/gAlYuJ6cgN0g2FVNi6wTkN7cGIeuhpahfnGVy3KwNOk0GQGdPWNIeGRnVEc
         7RlAw28DlDwwVvOoR67lRYq/ktNMlWzbnwPHoveuFZB4thTmg3/V8OME97hpoJY8F3hh
         Oplt56VWDv9qhYqilzMyhPd3IcUWyQX7/Vg1jIJagZU0fQdXYTDNi1j+kadeJN/bJzqc
         pTRJrbQz0yCSOHeacHXqZwaRsaAYvTI5zYAh22ReHhmvoygnZnZtcFFqk2ZH/XdH13r/
         kpgqistBcPEwTMOEXE7KnMNyeSVPeQI9MUuWX39ScFI7PWr3Qscxnt6NgECkfNqU+A5k
         40zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="LQZcLC/N";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id n26si44106qkg.5.2020.09.08.15.17.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Sep 2020 15:17:39 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 088MGrFj012572;
	Wed, 9 Sep 2020 07:16:53 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 088MGrFj012572
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] kconfig: qconf: use delete[] instead of delete to free array (again)
Date: Wed,  9 Sep 2020 07:16:37 +0900
Message-Id: <20200908221638.2782778-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="LQZcLC/N";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Commit c9b09a9249e6 ("kconfig: qconf: use delete[] instead of delete
to free array") fixed two lines, but there is one more.
(cppcheck does not report it for some reason...)

This was detected by Clang.

"make HOSTCXX=clang++ xconfig" reports the following:

scripts/kconfig/qconf.cc:1279:2: warning: 'delete' applied to a pointer that was allocated with 'new[]'; did you mean 'delete[]'? [-Wmismatched-new-delete]
        delete data;
        ^
              []
scripts/kconfig/qconf.cc:1239:15: note: allocated with 'new[]' here
        char *data = new char[count + 1];
                     ^

Fixes: c4f7398bee9c ("kconfig: qconf: make debug links work again")
Fixes: c9b09a9249e6 ("kconfig: qconf: use delete[] instead of delete to free array")
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/kconfig/qconf.cc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/kconfig/qconf.cc b/scripts/kconfig/qconf.cc
index 8638785328a7..c7216b9110fc 100644
--- a/scripts/kconfig/qconf.cc
+++ b/scripts/kconfig/qconf.cc
@@ -1276,7 +1276,7 @@ void ConfigInfoView::clicked(const QUrl &url)
 	}
 
 	free(result);
-	delete data;
+	delete[] data;
 }
 
 void ConfigInfoView::contextMenuEvent(QContextMenuEvent *event)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908221638.2782778-1-masahiroy%40kernel.org.
