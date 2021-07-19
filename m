Return-Path: <clang-built-linux+bncBCQPNZEG7UCBBF6M26DQMGQEAMDNCTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBC83CEDE7
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 22:52:40 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id m21-20020a0568080f15b029023dd486bf36sf14058434oiw.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 13:52:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626727959; cv=pass;
        d=google.com; s=arc-20160816;
        b=MIWMayBiD4r5Ezqn574J9YkwXvfe++VNqdCNJK8y8l2mvpa1/ICYw8nkwgjLw7r4mq
         fWQC8xbAbBr3i2sl5HzY+lK7kTFMdmMop4Lj7Q1Ee+Om8D/VPfrKupv6rrZT5mfCZsmK
         cPG3UkHSsyF+u7kXp90AHo0S600rMQ/aPlddYhlN8ADBsDgkQ8KqmLHg5MgDq/fapGw2
         zc3Ji18uFV09XbAtspglf+J9LenI1M0C6/gr2zuIoRL89bBjtwBNxGuLZsF04WC4VSEZ
         RIopkEepMcMkgWS92McbfuzjHwdICWS4qqo2AKXOonM0ppTPH5aP/PJooJjax75SZJbr
         emkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=njIoYtRw/J6tVb/y3WyWiDnzDWub/TW0AdoonSmLohQ=;
        b=BPhkwrBEXFvG3+bjrIZtfj4GmmhLilYKF25AMv/GeFWIp3E0Yhactf6cdEDaBVCKPN
         +24aL/lyLiH0+5OAvyu8FrJAQ2YhLeFvf0t49jODNpGz4ksNaKySH/ZOXtwfazFZPfh/
         885T6vE/+Rbwqq6oSBNeQ58Yj88dBWSwb7rcQtO4kuktds9zqGmf8S8T0DrJ+fCbynAF
         RFUP1rkWRrIgEGCsIcIfFlDnmSSEh4IIi7R5QehacOxZ8k+gTi2vmC040RMfd/tPVBM9
         Gu7Xw0sujSZjEr7ZGR+TB3POaLJ6LdDdjzbTMlh+SFVlcTlS1MkX4pqTvpCmPrzSdaMr
         pqLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KOsnSXDX;
       spf=pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=twd2.me@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=njIoYtRw/J6tVb/y3WyWiDnzDWub/TW0AdoonSmLohQ=;
        b=a+wpVejFaa/2nLMWix44dUEGNssZW/YSVpHtGuUxGSbN4L/HgwwK8ChXG3pZrkbY7f
         nfPcnEJMbihLhOkuPn9XQnfZSjqZQairMUVUoTcp30GMoKfCQ7GNcrqr1VUt1leUrEAE
         eEVCEjK9QEKLke0e5lF2z/T5sMB9DQTKGVfNbekD+FlevwG5UEB6sHP4xUGo4hsG8t3A
         OlT25E41oUHr9tedZ1Ud+chsZ5exynTRzipgo96dskc2UvdaJVEJyqgOnBr07gK+rDcK
         1fyF2pu9A2zjvIdxyij+TCn3qav3vf1+SI4Ga+tI8Q656/3eQ0SuTM3d3nrVZIYgWdd5
         5ilw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=njIoYtRw/J6tVb/y3WyWiDnzDWub/TW0AdoonSmLohQ=;
        b=H7/Iv+WLAruiSjbMryW5tId7dYKt2q8sPNlgOx3zwTZEch0hpgqkxZm7Wz0iHiKGS5
         CvG5Atf/b5k9rPqCjr0sIUfcLlq/MwPOE5r0Zu/D47isq11KsWHcA26+PQUPFA+xLQYk
         23zI1Bvn5UJZzuCWalFBp3e21e0WxeNKswVTjwtjC0ZH7Su2R+9B40PRzgTE0iNZjba9
         Of2CrQzoDNyxfeVBVPQ2oU4wY1ohHIZ21c4p6eAlkx8ZOqgXx+FsdeUaZQ/YLhxMGnM7
         mzOpuGEI+QwJrq3bjGaD5MS1BDkenLskC10eeR/zJluLXsfXI9xG8u4kqL0FAM+af/Gf
         7ObA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=njIoYtRw/J6tVb/y3WyWiDnzDWub/TW0AdoonSmLohQ=;
        b=jtDfHjlVtO7yt3fQKW0qH9LmA99u/a8vcxg8nyIkhlFHrY0BCassG5+V1LTTr+1pkA
         1mFBsU1MkL+bX+jXFSEZ/qhN4/HZYng4o5f0PqfAS+ipxMe8LI4cVSOEAinram/gyZaq
         cEHTvngqwKujN27T8ghX6gGZCkVrshiCRjYhURIyi6Ry9jTuNdd8+oqgUctLrh5lm1fd
         TBALrctBES3qPmDBNREdAoTWN08YQvrX7uahfMy9rSgc4Wt6JFhEtbcYoTZ0ff7L44ca
         lUpZaflbb/7erpYg/d/AEWXxYLBmDSICyYfWsi29Y4rqrjImQ5jpsn+kWPC04kXNDeHE
         2JFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324Wg0KPJLDIgnQhl/f7CDbiARbOHS0XXXxwyZX3DTKPl9zNU4i
	AfmNJtXx5HpBEfAShJmWl5k=
X-Google-Smtp-Source: ABdhPJyGXuqDvJMzB0fvM8dt5WrOivSEW3ZEjlZwnVhW/LIVqtziuBVCedkhujKpxzwa0KXg5pb64Q==
X-Received: by 2002:aca:1809:: with SMTP id h9mr23252333oih.4.1626727959367;
        Mon, 19 Jul 2021 13:52:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1c12:: with SMTP id c18ls9375472oic.3.gmail; Mon, 19 Jul
 2021 13:52:39 -0700 (PDT)
X-Received: by 2002:a54:4817:: with SMTP id j23mr10862277oij.59.1626727958935;
        Mon, 19 Jul 2021 13:52:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626727958; cv=none;
        d=google.com; s=arc-20160816;
        b=TafBlJD7CZAE4R4rx4cnhR/VLBHb9XRtzY84qxMedpTDaLmj+3y+SbVDudEZbko9vf
         fKuNXWIvCpnu+VNySIQuzesUvJVR9ErXbzXJJpfgCIqT2RwJLBkBPATgLBGF6AK+ZyvR
         A/tVEriG2DVl4qfWxRMcra0xpVYvtzBz1kUsyP42AePG0tbJFNrx8iNoh4MTdoDx4EuD
         itlYQ1VTSJTN4I4sPH7AIwR/QD2qJfcOXqXqqE9ZUZh1T3xfEQJ0vBbAk+h/3FIsTTI5
         aYuAa9ABBKkTgENY7Jg4nm1X4/L4kRXj4WrH9UY/CtaI6oAV92r5hZ232w+M/0Z0yDu0
         utSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=aG3gLfI8y7o/GHJXkoto5DIVOeV/UNicBQ2Kjsz2DKk=;
        b=wpKUqZZ8Im3kGe/ebYWZQZqSz6I/1Zd/JAag3DoRo4xjplBusQ6vETdORJ2FoJj4uS
         AGInhN5BpTnmjsUdeBQ8QU8Y+83Es2Ilg17mxioKYZK4GOYfmMjNR86BH8sqtaamEQzw
         51OP2F4btcyhHXG3pG7AxjK/Votl5pJhS5NWby3/Zp+IErUkBrUs51rpg0AH4VMH50Zq
         CbMWF3MDdOBUd4PoFejqYSuO+sf9OwZeWTBnT7HckvD3IJ+QoiAGL4yGiSVAIa54qUW2
         UEQgjt+GOMyvTZX09r36v16iyjzd1pnbDy/A2/7rx11vQy9C0fpqwJ82/OA8kubv0P/r
         y+GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KOsnSXDX;
       spf=pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=twd2.me@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id o10si1549519oic.3.2021.07.19.13.52.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jul 2021 13:52:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) client-ip=2607:f8b0:4864:20::1034;
Received: by mail-pj1-x1034.google.com with SMTP id h6-20020a17090a6486b029017613554465so985520pjj.4
        for <clang-built-linux@googlegroups.com>; Mon, 19 Jul 2021 13:52:38 -0700 (PDT)
X-Received: by 2002:a17:903:4095:b029:12b:9a0a:e79b with SMTP id z21-20020a1709034095b029012b9a0ae79bmr185766plc.32.1626727958252;
        Mon, 19 Jul 2021 13:52:38 -0700 (PDT)
Received: from localhost.localdomain ([2604:a880:1:20::1f:7001])
        by smtp.gmail.com with ESMTPSA id 30sm23742437pgq.31.2021.07.19.13.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jul 2021 13:52:37 -0700 (PDT)
From: Wende Tan <twd2.me@gmail.com>
To: palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	aou@eecs.berkeley.edu,
	linux-riscv@lists.infradead.org
Cc: Wende Tan <twd2.me@gmail.com>,
	clang-built-linux@googlegroups.com
Subject: [PATCH 0/3] RISC-V: build: Allow LTO to be selected
Date: Mon, 19 Jul 2021 20:52:08 +0000
Message-Id: <20210719205208.1023221-1-twd2.me@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: twd2.me@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KOsnSXDX;       spf=pass
 (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::1034
 as permitted sender) smtp.mailfrom=twd2.me@gmail.com;       dmarc=pass
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

This patch series first fixes some build issues, and then allows LTO to
be selected.

Wende Tan (3):
  RISC-V: build: Pass `-mattr` to `lld`
  RISC-V: build: Disable LTO for the vDSO
  RISC-V: build: Allow LTO to be selected

 arch/riscv/Kconfig              | 2 ++
 arch/riscv/Makefile             | 7 +++++++
 arch/riscv/kernel/vdso/Makefile | 2 +-
 3 files changed, 10 insertions(+), 1 deletion(-)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210719205208.1023221-1-twd2.me%40gmail.com.
