Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCGSVODAMGQEWI37SFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE943AABBC
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 08:17:45 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id c25-20020a4ad7990000b029020e67cc1879sf3316135oou.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 23:17:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623910664; cv=pass;
        d=google.com; s=arc-20160816;
        b=VLNS3KP9PkzOolwJpqSULnYUY4n4xDyyLhTb6QyE0e4lbcRatr2ZCBnzQFNG+C9Yjg
         NO7nrToPgx7SAA61uhcqOiuNuWQJodKxNKrXK+YOiXLSoEtYDR1+3jxM4GkvaRqNbdfh
         x0mWKmPTjpizSWFXG5BvfjQfr+6jzAwpwueEfEn244fVVFa5NOKzdd7ReWI5ELdXKKCn
         ySgvAByWR1FtvgkXBoH4knbNUltZ/SiYW3gZ8fxGfQ44Y/OCW3qHMEZrl2vRtUYgY88l
         tssPFH+qqhNcctY3zKhBMLGcFss2OrFiM8Kk4C9Wm6Nj7wcTjNQ31INDGtmtO8x/CLgs
         yppQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=JyTCROcqv5W64YZ4PnpCyi28/npGZY55ZYkl06mcj1I=;
        b=WEHJSvfC2j1d6KE8PkSgCayQS6nZtkv3b3xDQYb+hse7E3VZl3LXKr7tXE7X/z1xBI
         lGgeykuO/94QzOqzXzR4yrACIXMxVxw8LCTxgP+V1gk85dauBWZt4TOtBezjZYhyUces
         Jbsvw7d5E7cn8Qlq4I61hX5wWvwB1tr4YM0n/UZNvd0OC1VBOL+XdmfcfmWQHvxZOlT0
         IvOTqmJiHihfxd0FVNn5qWH4PUycVFjMIJrlfbklnDDYnCj3xony9wBo3e3OIVRjqt4/
         JKYGN0hPRMF1a1kcXJvQNdsgL59hI4gdZ9GK83+2RCiMYUQ96zlNV6443e/d9Kpu74cO
         s0Ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TxPXXdmG;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JyTCROcqv5W64YZ4PnpCyi28/npGZY55ZYkl06mcj1I=;
        b=O6ePJ6G9b+PHLV9/v9Q+J9uWEXLyVYOz7Q9qYYNfFa4ErNRp79poDpn/S2CAnmMRXa
         5yBjFG9mECSwTTmcMAErAjDxYIvldHpgWJFxezRjBrJVzd7VDjReYQspw/QlJkCYtLFP
         MuatFzeEkYihFysXPLGvFnvH35eJcTTsucIje9cu0dZsHWlKelGSAS0YtjNS6KMthzPl
         mFiWpqGdbPgD2vVzwQuD9TeVlXx0bQgsP8ORsHmxLHCm2nBFpnSe9NL5WkgzOeHrTSUS
         UVeYAn0uWpTDeQSsHb7LRDNpYo8GY+qjOj6O7z2xGRFg0nGzyi4z4VgAAtMdkX9q/Dzb
         ehiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JyTCROcqv5W64YZ4PnpCyi28/npGZY55ZYkl06mcj1I=;
        b=oes+rvVJnQgNOkupgubtSiv5ASpx/Xj6TlPgNkzWqn+YHoJcgAGj8yRUqlLx1LZIDG
         kH8A/qR6aPjmo4dlBaO2XNM782QuMiu73xK9qmwgaMnuh320SVTu/1l4VV+o2XH7iMFb
         JO2E1lpBv7YbapGR0zkvJImWzgxYV89XqN6mbqwbMG+xe4uEHrGl8x3o0v9BSlKCTu7P
         mls8q292/pQgMCBzeB1p4qtVICC8cwBdkzXFUXvq6YTJd2tUrGEIHtfxslufpTRs/TQS
         Prs85MK+WR9GdQbiwfVD2CqXQxHuWDT0rp3UZ0M3GCr5N1vIH35vIRNlkcWdcWc2nLns
         18Xw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533iCZgMOq/TLWZcnNGd4pjKvzlsB7o777OO8KWS9knhISGLNJM2
	aVNPFfUs6ejZwpojwY6tX8M=
X-Google-Smtp-Source: ABdhPJxn0ctHggr0sUMhdrMUR3JaIQL03a+6A5bNFDIG28eeqz5Yyo6+x8PM+XDbLuHQ5PlViY0/qQ==
X-Received: by 2002:a9d:4606:: with SMTP id y6mr3057168ote.313.1623910664215;
        Wed, 16 Jun 2021 23:17:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5f05:: with SMTP id t5ls1569718oib.3.gmail; Wed, 16 Jun
 2021 23:17:43 -0700 (PDT)
X-Received: by 2002:aca:1112:: with SMTP id 18mr2055440oir.34.1623910663897;
        Wed, 16 Jun 2021 23:17:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623910663; cv=none;
        d=google.com; s=arc-20160816;
        b=kkG0tQfc+o4a4gRIPkCloGu90Rn60ZkgMt7ZbvqSvFanGSw5J5bWl2ilbDrNZU1R++
         Yc1LAHf14I6BiYr1oDOygb9zQSDfiZ2FMK5jmIGCFxjFcSqBoccqZFb8Q+xQ9skTtQdu
         Lb1jtcYHNjDg9YHo9PmCWpMPUpg4e7/G4aGzdS7mbUkjv25iQYl6qOnAPnWm3V3pqn6a
         cvn8tB45s6L0GYkVLUfWelx4GyDM6HHbn9FAB2+MeZzVi/aBietKsWqqtNk90RvyBNqA
         oeqZV3jbVmKMIEpNPZSKZkGRnMZ8D1r6pvJK23054tYFIeITQVL7QU+JG4ANMTNciyMl
         QNgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=GuG8Z8csVVnC8gUemRlGImTJZKQOHU00q3bguqh691c=;
        b=bcLBVWwy3TFl0jezORquazCUYmmns/y564AboUaLXzIGnLA4U4Ux0RwSO46QEOBOam
         8rzbMpYi4Vj/gSKs1O0vQenkaXaH/ohBFB/3o3IGNwYuuPpR+jYfmCXMSBiVYLZvsezH
         koBqfuPKVMGNYvKnz2sAiDuoWaakg5MusScybhIo8GO8laBIHErHvA3Pnp3bNJGhPoo3
         W3Ex6BakfSFwnIyh/NnqA8W0IA4Nfd1FOufj6KvKoRnYSW7zhHqtfD1293zbU5KbPJ3e
         Nrh9fRG5GtWjzJRy7UQP4A95jk+oL3ydz2JM9kFNO/+7IUBS1OylRxeyqjRaWwf1T7al
         7xZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TxPXXdmG;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u128si436673oif.2.2021.06.16.23.17.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Jun 2021 23:17:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 22CE561245;
	Thu, 17 Jun 2021 06:17:40 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: James Smart <james.smart@broadcom.com>,
	Ram Vegesna <ram.vegesna@broadcom.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-scsi@vger.kernel.org,
	target-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] scsi: elx: efct: Do not use id uninitialized in efct_lio_setup_session()
Date: Wed, 16 Jun 2021 23:17:21 -0700
Message-Id: <20210617061721.2405511-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.93.g670b81a890
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=TxPXXdmG;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

clang warns:

drivers/scsi/elx/efct/efct_lio.c:1216:24: warning: variable 'id' is
uninitialized when used here [-Wuninitialized]
                      se_sess, node, id);
                                     ^~

Shuffle the debug print after id's initialization so that the actual
value is printed.

Fixes: 692e5d73a811 ("scsi: elx: efct: LIO backend interface routines")
Link: https://github.com/ClangBuiltLinux/linux/issues/1397
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/scsi/elx/efct/efct_lio.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/elx/efct/efct_lio.c b/drivers/scsi/elx/efct/efct_lio.c
index e1bab2b17e4d..b7d69ff29c09 100644
--- a/drivers/scsi/elx/efct/efct_lio.c
+++ b/drivers/scsi/elx/efct/efct_lio.c
@@ -1212,12 +1212,12 @@ static void efct_lio_setup_session(struct work_struct *work)
 		return;
 	}
 
-	efc_log_debug(efct, "new initiator sess=%p node=%p id: %llx\n",
-		      se_sess, node, id);
-
 	tgt_node = node->tgt_node;
 	id = (u64) tgt_node->port_fc_id << 32 | tgt_node->node_fc_id;
 
+	efc_log_debug(efct, "new initiator sess=%p node=%p id: %llx\n",
+		      se_sess, node, id);
+
 	if (xa_err(xa_store(&efct->lookup, id, tgt_node, GFP_KERNEL)))
 		efc_log_err(efct, "Node lookup store failed\n");
 

base-commit: ebc076b3eddc807729bd81f7bc48e798a3ddc477
-- 
2.32.0.93.g670b81a890

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210617061721.2405511-1-nathan%40kernel.org.
