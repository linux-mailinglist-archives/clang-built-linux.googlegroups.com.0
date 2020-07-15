Return-Path: <clang-built-linux+bncBDA7X7F2WUEBBSHKXP4AKGQEQRAS2FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6E8220CD9
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 14:23:36 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id d11sf1215650wrw.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 05:23:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594815816; cv=pass;
        d=google.com; s=arc-20160816;
        b=trvRffijiQVqqO2UzDwwCLYTA2WqGfhkWQzFv5fst0cMHqZzdEQ6WFpJrUpI6THOZj
         Gr6uTR95PCH1iyV18+Nk5NNCkWpmqkC9ictmJFWO+hWugBW+StU+eXzAApMKnVI2h7bj
         HyjDopzEht6pxs2jNDVKF/qOtJ14F+1HD0fR5I3iFbGBmSFZhTIz9fQ705hW9qoJ3Y4v
         SOES6F1t71tRtt7zBHI656bWbQIQ/1ejmbKYqQCMG6/4imXZbzjfAm85uJKnPoyL8Nhe
         8lyiBtFZx8hED67JUuLDw7k4DFmg7Zq4AKm6FcYgjZe34nc4GQtvHKDD+5E+NvaeQqzV
         pwaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=MF9hI3bIvvjQ4gi9IOd4EK+2bnys2gLW5i4fHpSynQE=;
        b=nkj1Uq2Xpa56KGHmvrKBPVM3TW43hLHHY9Dzp7pDqEI1dtyA6hxfQRngZhgvfQuM45
         PguXF8Jtogh/rcHngcKN0MWI+x8g2u5hpr+hTVYaDjAhVFbOpAYd6v2r4RCAOMm235jB
         cKnDhTDGZ+p5h9DjeNAFWwaR64h4VN0kMDGFWB2R+edzJQcFeSRCXN9v69qj426jiGTE
         Y2YMpxaDyfRxQeVFVHnpIE3YCOT3OrewB0L9mNrDgYIWvyYse3fx7nwsDWCg4sqWMY/9
         fBTI+qB0CyzWRf4XXDPOr1scBl9/fyWf8bHktcQer7+UMKKFga1egr9HuzG7XOPuwjuG
         bvww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=EENkeYdp;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MF9hI3bIvvjQ4gi9IOd4EK+2bnys2gLW5i4fHpSynQE=;
        b=LjRtKpoQ3CbdiAGGb2Ftc0KZZA3Sx508C4ew+TWVxmUm73lIaDTa37sfEDZoRzJfo1
         6eeCdwmAsSKbYKh7rbaE8u865ocPX4V6tpUEUxUqNp0U+3EKeCRfZAhOw63zZPYDWhD0
         /oTftqRe0tbPgwEsyn5Zh0bpKYRJvMemWfuZmXQEpDV0MNm/+WSPs8oFHzb8UwiwBCJZ
         LMZS2lvnb/aXUen/Bw9UqC42nHI8M1LaLtU20Aou9rq2uSY8TgRLzM4+x2DI32Yw+Wm5
         fHFX9d4rdXdrlmUCTXCm2hpZcslRd4HfvR9nItmbIfIhnqdgL0ybvdlG8VpGx0KkZdbT
         sdBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MF9hI3bIvvjQ4gi9IOd4EK+2bnys2gLW5i4fHpSynQE=;
        b=Jp7ISU+sdMOuEyJYAdz4wED2Cp4efiMvTusn3/Cte8U7KzToxJrVTPWZNtJj4FjA24
         mFPhtJZ9UIr3wam2OETEYMxv7kddObY6NPKLO/YjtRBH9MkD2kP3q/lifpTqy+om617i
         TsykYLCygiXN4YqKn/NtpLqs+Eta+PJeNnPZUlzQ9aorVw1NgX35NHGlWaZQJijxV2Hi
         EEkVLSQe7F4UogWZgi42S2Uq3ILltyhT0bYpY6QaDmpEs2nsDhwZmtF5B2ZfnjInrVYb
         lt4hamhjbMI5SgN7SPHat1V4nxFN3K8oug0NsSELT4ZzwkpxGn6HpvLgBc3e0PCZa3Lz
         V/Eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331tXeRaoLk/oZyfTRnPDEdNpaFssPl9meHTAc2MKrFof3GwJPS
	o+myebO6VpGlLSfrLLraHwQ=
X-Google-Smtp-Source: ABdhPJwKcDgWi4Kg4dZin++qnb46dXVvxM0Jba16AK9Dbg+KCKzlqvl/2/gdrmdYpAkiTVyD2riVLA==
X-Received: by 2002:adf:e40e:: with SMTP id g14mr11863716wrm.271.1594815816442;
        Wed, 15 Jul 2020 05:23:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2049:: with SMTP id g70ls511797wmg.0.gmail; Wed, 15 Jul
 2020 05:23:36 -0700 (PDT)
X-Received: by 2002:a1c:1b90:: with SMTP id b138mr8470392wmb.21.1594815815932;
        Wed, 15 Jul 2020 05:23:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594815815; cv=none;
        d=google.com; s=arc-20160816;
        b=poUz9Fuv84FmaayGW8HKM3kEWMfadeuepahUvTTK4lmAJR3Owya4cdqYslikvrtGj2
         Fv4c1qLEfEbrE5Ao87402L/ZM9qse9D2sQ9fR1C5kSn4bB1fb1Bh7AerHRrSa5M4NacB
         js9C8BRNuOz6ol7js1fBteLkiZSHPJA30g/oN+oGG+Ip8bu5WKQPHQErgif1Bpsut6fp
         ReyW2JXEcniRYm8C88cE3oJ9u3HNkNDKCntKK3sFpgPAYqZRYkEAK2AMT4EX84miClPa
         pokvY4A++91Og+e8R7Q9E7OKHWSxdXR0g42MT36zU5DfUxrUOA6sePynyMefpekeNjUS
         TnOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=KVdISYiS8HEy4aersiAqtxJUUdWsfYZxho+YIECAEc0=;
        b=o3ZL6zbFk0G46RPcN2aJoscQKAFq3KwlPiSkXxFD1RC3PZwDXE8T3yNOKoiLIV6q9s
         0ubemJxyNVvi8nuwmAhGSo0/EpUBegWKqO5ZkCOSsLAcxrAytWveyQtJzlCJnrJU5G7m
         ihazTDMshGTGS0LyO10D71qcH7nhMA1CU0nVm51f4NCUZV9sgc7QbhAM0rvW7ju0OaUg
         eYeVSxfuour4nP3EtmbveqyTxWo1QLeUq6gXBD16S+cjdXCry7Dkx/WauESeYtViWJrI
         wYP++n3SvT88KfTnkMRIxnnllgg9xtM5/oRBA/uW3/r+GO85ehepheYdzKqxJD725Uer
         LJxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=EENkeYdp;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q12si88623wrw.4.2020.07.15.05.23.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2020 05:23:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id o11so2432323wrv.9
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jul 2020 05:23:35 -0700 (PDT)
X-Received: by 2002:adf:f784:: with SMTP id q4mr11028896wrp.397.1594815815609;
        Wed, 15 Jul 2020 05:23:35 -0700 (PDT)
Received: from localhost.localdomain ([2.31.163.61])
        by smtp.gmail.com with ESMTPSA id l67sm3753409wml.13.2020.07.15.05.23.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2020 05:23:35 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Cc: linux-kernel@vger.kernel.org,
	Federico Vaga <federico.vaga@vaga.pv.it>,
	Jonathan Corbet <corbet@lwn.net>,
	linux-doc@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 1/1] doc:it_IT: process: coding-style.rst: Correct __maybe_unused compiler label
Date: Wed, 15 Jul 2020 13:23:28 +0100
Message-Id: <20200715122328.3882187-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: lee.jones@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=EENkeYdp;       spf=pass
 (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Flag is __maybe_unused, not __maybe_used.

Cc: Federico Vaga <federico.vaga@vaga.pv.it>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 Documentation/translations/it_IT/process/coding-style.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/translations/it_IT/process/coding-style.rst b/Do=
cumentation/translations/it_IT/process/coding-style.rst
index 6f4f85832deea..a346f1f2ce21f 100644
--- a/Documentation/translations/it_IT/process/coding-style.rst
+++ b/Documentation/translations/it_IT/process/coding-style.rst
@@ -1097,7 +1097,7 @@ la direttiva condizionale su di esse.
=20
 Se avete una variabile o funzione che potrebbe non essere usata in alcune
 configurazioni, e quindi il compilatore potrebbe avvisarvi circa la defini=
zione
-inutilizzata, marcate questa definizione come __maybe_used piuttosto che
+inutilizzata, marcate questa definizione come __maybe_unused piuttosto che
 racchiuderla in una direttiva condizionale del preprocessore.  (Comunque,
 se una variabile o funzione =C3=A8 *sempre* inutilizzata, rimuovetela).
=20
--=20
2.25.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200715122328.3882187-1-lee.jones%40linaro.org.
