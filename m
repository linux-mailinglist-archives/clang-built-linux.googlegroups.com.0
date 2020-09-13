Return-Path: <clang-built-linux+bncBC27X66SWQMBBVU47H5AKGQER45XAJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id E1912268053
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Sep 2020 18:52:39 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id f21sf8300168qve.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Sep 2020 09:52:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600015959; cv=pass;
        d=google.com; s=arc-20160816;
        b=GBZCklQnczfjhnXo2OmEyAPkxisjj+y68NrBufxjpRqBoajD/G0R9VZlqDrVd8bwE4
         rB/4n7SnUM/JDtb/KpiEvTc1I1Vtdo8pp9eGMm5m9EEl4nEWniFgnqUFofha5wCfbL3Y
         t2sA8VUQRdU2Iu7SKD9fdVnSgcVAGBm9Hv+qA/+gn2seZY68XMqX88CepF3QDkFOfCxH
         WCGKEz4cvwg6ZUBKH2AamhB6jHT1x9UjFITs2a9HkoIYq3EV6KUmtAoh1kY28ubVOKYT
         GNiiAgZDbwBawdheqqACZOdlfTMxU5SLwTy6tjPI5RUS2mskNSk9QPVe5kN2lj1sgpWb
         Uaqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=JBsxP+IQWA4PRvJIEFDlRFjd9l3i9aesbsj3H86hOnk=;
        b=mZsqvpBbSZADUQ7PCHIDxfQVgr0D9Ib+VkuYVME4z23xrw2iRC3w9hTgQMFh6/YO+I
         IhGxTjkS+bBgk3l+xy1QdacqxFcgzE97CsUnKkjn4NRUQtPCictAilDWWQLlQApt+V7F
         DEmkXpWznSZ1tSnVJdMepJCRZ6Wl2eDJM8AlOnYU8vbRyxlQ6I5vvodT7rwRMXJXpcGa
         iXes6SX8GYW5G8TJrVzN2uiVpnn4VvCfG3wd8NWHEdXzzCi39E6YYJtFIcOs1ozQGKsh
         wfTzJ3UXsA9z5VarxTvkVIaL/+442SNgj6ww6SzV5cBd8ck2fhaM8m4A3ygKtEh3W+d0
         1VLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aTEMDv5N;
       spf=pass (google.com: domain of trix@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JBsxP+IQWA4PRvJIEFDlRFjd9l3i9aesbsj3H86hOnk=;
        b=ECLMEKQRgudw8PfTc867Dioj2m2qkEh+oVvnZEQVSrb7Gk/ZzAqMzVOglhTmeHtigT
         ObFksY/XtmojxBOUub6ZZv5N0Bll9ajrzVFXgshN8hJ/NHPhQSCjgbiTix0urxRu1BTq
         Jnjq+s0YosOYp2KTZV/WcshjzTMyMHP9irYsUF4L0JHKOF6LvzdzTyFDJwxFRMGXPtjd
         kTOj5LwrxTJCHzmJnlpYYGylAreZrcqL7tdycJDj614v8Mzhng5ojDB0U2SfTafehvvE
         VFdqcgKZdBzeljWwHjbDvF7qrcjyeBS3go7P1bw7D6PDemvfnwyswjuyUsc4RCiAvUBD
         F6zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JBsxP+IQWA4PRvJIEFDlRFjd9l3i9aesbsj3H86hOnk=;
        b=ZhWQmU1k5Gc1nZH9aZkC2/qk3NdUMH/LzmeJ/CVJpeytFP+tSzBURUMmigSJA7HLwP
         4XM5eQfR0wieVBghezWpRVEsUh5w4/fTJyRj6hYpJ97YBs5WQwgbvfbRm/R8mCsHtuZY
         cHQKfUgspBsLo4DvUStB3MC1VF16uSlqednMDyCdA+xbpMpbq7BXiyu/dmAG5uTFlKCg
         x5Y/pZ0SK+q9l96tTlcpjEivF068L+pfpXH1bWHROt+q8fh/JGG5EhQ/i23At/Ig1yRU
         UhP5c5SAuvVYJ0eK6/WkE3ke06qR0ilHme7rdxWPB1nYQl58L/MO40wZXkh1hay6WScT
         PxSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309n5CLJGi/CeFDgBm4av9jp9xlKITW34HyZIlc6MVwyPPDaGAv
	vj2G6lWoC8u5oYCbNkL3TNY=
X-Google-Smtp-Source: ABdhPJz7vSJrlWtn6q28LD3eh+g/hoGdGV0+Me7PrFGNBPjuTA0I0rAP+Qxg5Ho24YkSEEsOOCCkAA==
X-Received: by 2002:a37:a78e:: with SMTP id q136mr9547961qke.42.1600015958723;
        Sun, 13 Sep 2020 09:52:38 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:228d:: with SMTP id o13ls3670467qkh.9.gmail; Sun,
 13 Sep 2020 09:52:38 -0700 (PDT)
X-Received: by 2002:a37:62d6:: with SMTP id w205mr10048327qkb.229.1600015958248;
        Sun, 13 Sep 2020 09:52:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600015958; cv=none;
        d=google.com; s=arc-20160816;
        b=hMnUqr9XAG0Fml2pF+5SjT3+gwLBolaYT2agySBCLqmuzwS/ITyV8sYHr7bFc03JAU
         u6ZuvRqeRaafDZni6t8cxkgBa3Ar/S7c4i5UWHT1YnxnWrD+YkP85EKNmsahx312QsGq
         nTXIjHH8/e2AzJEMhFZtCODAvDcGvZI8OLY+cVqoUMfP63a+iKgmGSXUNcsixoz4Cbt+
         Ij43cBd81xTd5E4JJjhM5OyaHF0+XI6Fp5sR/KCTmvGsuaA3TDescFtfm2+ktH6zxg/W
         oSdB2dqOYR14e7prWy2r1GE+zGzeGkD0b+BIxr+eA2RPZiACyBpjPFYzZ1VRw0RVF98/
         yZnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=OnOecvlCsmh6JKu+PCBfRD+F9XU63TdFztNbTAcxKzQ=;
        b=o21kozvlS4HY9ute0Ki4xWJI7A3Lwc56xxS5Kiyz3Yl23axugoSwxlR/kAH0G4+rIE
         9o/jkezjpZEzVWdgaob74Lwl3vHbf9agb9pbOJzh2YE3GlIKMPNJJC+cqEeCvmTRmQrJ
         HmygcLmt32lmOLpTkg82BPKiNucHf24pssZB/ZMv6cxuM0YXGNyAd3zRXG2fb65xSHtc
         bSKax5JDQQKEvh7/79P96fgJZKrU0NmW11Z/eSMv3l1yxteNBIms+0Qgqlt3m8iS1bqK
         2y/fUqAykNYSxh+QW8eokIgv380B3VRi78+gDEwnZrsVjTIqCDn/4g7AW/hdh5LZDFjT
         SiNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aTEMDv5N;
       spf=pass (google.com: domain of trix@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id h4si54784qkn.3.2020.09.13.09.52.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Sep 2020 09:52:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-288-t-Gv5jz1OKysZd2c1Amhyw-1; Sun, 13 Sep 2020 12:52:36 -0400
X-MC-Unique: t-Gv5jz1OKysZd2c1Amhyw-1
Received: by mail-qv1-f72.google.com with SMTP id bo17so8319934qvb.2
        for <clang-built-linux@googlegroups.com>; Sun, 13 Sep 2020 09:52:36 -0700 (PDT)
X-Received: by 2002:ac8:100c:: with SMTP id z12mr9721949qti.81.1600015955836;
        Sun, 13 Sep 2020 09:52:35 -0700 (PDT)
X-Received: by 2002:ac8:100c:: with SMTP id z12mr9721935qti.81.1600015955583;
        Sun, 13 Sep 2020 09:52:35 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id g19sm11332392qka.84.2020.09.13.09.52.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2020 09:52:35 -0700 (PDT)
From: trix@redhat.com
To: perex@perex.cz,
	tiwai@suse.com,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	eblennerhassett@audioscience.com
Cc: alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] ALSA: asihpi: fix iounmap in error handler
Date: Sun, 13 Sep 2020 09:52:30 -0700
Message-Id: <20200913165230.17166-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=aTEMDv5N;
       spf=pass (google.com: domain of trix@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Tom Rix <trix@redhat.com>

clang static analysis flags this problem
hpioctl.c:513:7: warning: Branch condition evaluates to
  a garbage value
                if (pci.ap_mem_base[idx]) {
                    ^~~~~~~~~~~~~~~~~~~~

If there is a failure in the middle of the memory space loop,
only some of the memory spaces need to be cleaned up.

At the error handler, idx holds the number of successful
memory spaces mapped.  So rework the handler loop to use the
old idx.

There is a second problem, the memory space loop conditionally
iomaps()/sets the mem_base so it is necessay to initize pci.

Fixes: 719f82d3987a ("ALSA: Add support of AudioScience ASI boards")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 sound/pci/asihpi/hpioctl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/pci/asihpi/hpioctl.c b/sound/pci/asihpi/hpioctl.c
index 6cc2b6964bb5..bb31b7fe867d 100644
--- a/sound/pci/asihpi/hpioctl.c
+++ b/sound/pci/asihpi/hpioctl.c
@@ -352,7 +352,7 @@ int asihpi_adapter_probe(struct pci_dev *pci_dev,
 	struct hpi_message hm;
 	struct hpi_response hr;
 	struct hpi_adapter adapter;
-	struct hpi_pci pci;
+	struct hpi_pci pci = { 0 };
 
 	memset(&adapter, 0, sizeof(adapter));
 
@@ -509,7 +509,7 @@ int asihpi_adapter_probe(struct pci_dev *pci_dev,
 	return 0;
 
 err:
-	for (idx = 0; idx < HPI_MAX_ADAPTER_MEM_SPACES; idx++) {
+	while (--idx >= 0) {
 		if (pci.ap_mem_base[idx]) {
 			iounmap(pci.ap_mem_base[idx]);
 			pci.ap_mem_base[idx] = NULL;
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200913165230.17166-1-trix%40redhat.com.
