Return-Path: <clang-built-linux+bncBCQ45GVI5EFBBHGAZCCQMGQEPPHEPWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CFA394BDF
	for <lists+clang-built-linux@lfdr.de>; Sat, 29 May 2021 13:06:05 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id r2-20020a5e95020000b0290435b891bacbsf4534408ioj.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 29 May 2021 04:06:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622286364; cv=pass;
        d=google.com; s=arc-20160816;
        b=nuFz+lOFQ3KUtNDrMI7j7Kw4Aj0U76NmmEzDyAXJ1Y7IvHw59ckU26Pk2C9eqDviuI
         TGo5lnRU9fLfcg7knDtCemFSDm7aDOI9hiG+W6m2aqKVw1EiA9cZTeSapchvZucayYIV
         RqxzPHEnKrxQ2JZci+LF6vwuc9FRIcux5d6SYUuWOYZARZT3gZy2wZHEBU2El/TZC83n
         AzSa77BpsOf9VAnQR+04YDA+HRjVNdaPha0j0OlXcOjo+ykEpn/ElkdfAkgCoJE5lAvh
         EViPjqMUSaR/3bq34KHU7pVKrGSp12K7B5UZQGRJs98uJoTd+8anTi1PNgJbEzBYitC1
         uDeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=P0whEfth16Zfv1anvoCNTF4k8EjzMZ8rTKQt5SysyzY=;
        b=sZaiMAoRdos0j2KyL/yND4lFR3raEkKT3ZPpQQYhyenUlFMjyIAK+A9XDI4cNK3tDY
         79IkBhyq1tHdKRWP1UCsZc/Vwyfikp/Nu7hK+0xDP/LjQ331dVONep2IK5dyZTX9gQpU
         IQYvKUPsgzQcN5eXpVfwT3n9kYZnJD/3L8hD4ZrKw3Glv6nZfpao3SAYaagsAaJxFlUF
         Vj9jAesAnqhHaB81b1lKuXwbr7rJj8M5escXu8N4hBjn4u4QpfYkkd/XcXKqIPE9VlVw
         G03SHJmdl+PAxlsXNktQPt9jFeCUvVtbUjoc1wzjdIkuyOjsaVphLPKFavZ2ecixWdfo
         o7jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qnSpDmVR;
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P0whEfth16Zfv1anvoCNTF4k8EjzMZ8rTKQt5SysyzY=;
        b=jNuIJFoXirooLqo4VNN94kC1f5uU92uo1SzjdoxI/zP2JOvzaAPVlDdTTUA5o0+lE5
         z7hCl0gWCIV9ZcYhEPYxhqEaSm8x1Dxic0YVbBsuCIQmp4Yi/Ghdj6MbHC/WWC0AY+7U
         smpC+MPgbBj/evCJfUIWKWKGCZoPVFiXb1Sn3+uZZe5MqltcoNomMmDZK/BV7Je8R8Sd
         B6dP+ScFOjL+lX8HsDuRiX3EJw4XwyK4b19mKPGndkLQ8A9r/5D5m4MmCQgdf655E/DN
         aw7dH0jGNgdXe/QrsbCNqxOQav0uXN4tRqyXgxgiFhu2j0LREMOG/H9jfJueVwnb3j+S
         qwhw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P0whEfth16Zfv1anvoCNTF4k8EjzMZ8rTKQt5SysyzY=;
        b=qIx3QoGWpJLG0DtFHksGyhtgi2xpKAPRjjWmNTcZGd19y+L7hhgzhsEvN/46D4woNi
         W+EigFwaj3SjGMgim3PUKVZ71Z4VwKksXH3+w8KUq5vD8z+jKbNa/dfV7s+dtlSH7yUi
         ObYXe4R82YBze+i+r8knOpzJkC6eb3TZIVip4GzqU5NAFOqsNSJBH8j6FNAxJ73IfLhO
         myI6xldOiAJb1KdX59qmtZV3lOidlOHXONzCgb5QCkPwkXqOO5sGYTVmEHsjZsi1uMoZ
         pyMEn5WD0ZX5Ab7NoH1ArCddOeA6WTOVqyd+oMd7HF3jt5LZo4LZ6bWDiB+xLtWHCFJa
         Wcnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P0whEfth16Zfv1anvoCNTF4k8EjzMZ8rTKQt5SysyzY=;
        b=ELMzrY7qpIVIDqR0uR0a1F6CZcugeGrABkqhVe9jLLAY6uWWMO8ZkFoGWvsWROBEnO
         PrlQNJ6nEchEia1FTlep2nZZ/FtoXma8SdpaVR+G4IqVHHpB+lfSPK4Doqb8Bb6AV1Xk
         fKvICTi+MoL8hP/uvRoykTfVVmuOYYnr3blFlYlYHTt3kCnXNQwFB3q1BlaBK+Mr6xai
         8GNYvXZYflmlB8JRnmUnLLHYLTcD7g9RGPqrzrrkcEBhfw1joKWPQGOkoVVGyjk+oYMv
         j30sgzy7XhRFyKQmzh/4NlRBqC90JBDtEyPJBAEErQvURF/CXxIi3BKaub5vUhL8VsMh
         Py7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kMq/PklGQj7aoc5Ix/GvgpgGtqegsE843r0EqLAz/rjKt6frI
	yDpxfuNdNbUsiIsZP0MHGfc=
X-Google-Smtp-Source: ABdhPJzQ3xXodmOrZ4YS5DaXLDc+UZekPEMk5jMeIM0LvoW0T32niRZeyKj+KWv+ozkY7zqmBLmj3Q==
X-Received: by 2002:a05:6e02:1988:: with SMTP id g8mr5680745ilf.4.1622286364198;
        Sat, 29 May 2021 04:06:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:3382:: with SMTP id h2ls1286676jav.4.gmail; Sat, 29
 May 2021 04:06:03 -0700 (PDT)
X-Received: by 2002:a05:6638:32a8:: with SMTP id f40mr12491400jav.84.1622286363925;
        Sat, 29 May 2021 04:06:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622286363; cv=none;
        d=google.com; s=arc-20160816;
        b=c3u40eKFuaksNZLupJFkmOIEPqYyVJR07ymvZWGRpay/YZ7r7IAEjdcYbg5a1U2B2i
         35dPOyFgoD3K66oVPIxf4UcmPZrdb1Z/3E2zhjZK0wEiLw2aMT2gpHqy90Ce21BkVIOp
         +W9/fzwYGIZyx7/X9Y+ZQgGVxUEAIW1uhQQ1snPlMS9D5ZbV9CatFZ5FHqxT/e43tP0D
         CTEnYlm5aY6hPkveJrG+k1rhCU2P6AFBihqLtB32JtPDKKNYvTC7vc2BI8W2b0O/oA9k
         MVz2tZ+EFMxpI05BfNIL6sdTFdRYPlKsV6U/oa7Ngm55p/9NRVbZDxmxR4vjzrQyoEyL
         kQzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=xdgywVTLMJ5d2mbdhxOjTBylWvVS/FWAM6bDew1xCYg=;
        b=Mc5aqvL7UbN40FWgHgoUoO8DR6p0PzKTY9lSwPHnjkWGcokY+Idnn1Ogf8Qe9/31MM
         FuGjIjQd2X+eQ+Ik5Wxv98q8nwvQrIga6sDuhs+NXi2gZ8XhqF9qLY2lZgPeEfO6wc8u
         IHJQTme13AHV7uZ2lDyF2uZ6iMnjpddCKXn257Qe2INRv1DWZttMhKXPACIRC3KXWqdQ
         HVm9Pb3+3bMdgVYCYukev7/Nd/n5YQQdKSKNi9Df/psrYrYl1Y5MqbEZz+W6s5syrQ+M
         g1qRuhvxfE5e4Xx487N7v1m7UOC283T1SzpSLb8d2VGRrGkFZjlYpl9xgUj1o84J8FHE
         bmTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qnSpDmVR;
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com. [2607:f8b0:4864:20::734])
        by gmr-mx.google.com with ESMTPS id x13si810854ilg.2.2021.05.29.04.06.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 May 2021 04:06:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) client-ip=2607:f8b0:4864:20::734;
Received: by mail-qk1-x734.google.com with SMTP id i5so6667772qkf.12
        for <clang-built-linux@googlegroups.com>; Sat, 29 May 2021 04:06:03 -0700 (PDT)
X-Received: by 2002:a37:2e05:: with SMTP id u5mr8022450qkh.139.1622286363400;
        Sat, 29 May 2021 04:06:03 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:5af:2aab:d2d5:7c9a])
        by smtp.gmail.com with ESMTPSA id t137sm5328991qke.50.2021.05.29.04.06.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 May 2021 04:06:03 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH v3 0/2] fixes for yt8511 phy driver
Date: Sat, 29 May 2021 07:05:54 -0400
Message-Id: <20210529110556.202531-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: pgwipeout@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qnSpDmVR;       spf=pass
 (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::734
 as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;       dmarc=pass
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

The Intel clang bot caught a few uninitialized variables in the new
Motorcomm driver. While investigating the issue, it was found that the
driver would have unintended effects when used in an unsupported mode.

Fixed the uninitialized ret variable and abort loading the driver in
unsupported modes.

Thank you to the Intel clang bot for catching these.

Changelog:
V3:
- fix fixes tag hash

V2:
- fix variable order
- add Andrew Lunn's reviewed-by tags

Peter Geis (2):
  net: phy: fix yt8511 clang uninitialized variable warning
  net: phy: abort loading yt8511 driver in unsupported modes

 drivers/net/phy/motorcomm.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210529110556.202531-1-pgwipeout%40gmail.com.
