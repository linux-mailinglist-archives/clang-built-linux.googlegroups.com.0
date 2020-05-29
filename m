Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB2WTYX3AKGQE3AYDLZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 344131E883F
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:00:43 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id s17sf1453243wrt.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 13:00:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590782443; cv=pass;
        d=google.com; s=arc-20160816;
        b=wwC7PcIH0V3m5tRESILxgMuXzct/YkAC199DIuRtwy/hO1FNqfK6FTaKl9IgHYNfLB
         viCAb4wrCi5aY/cu5FuivzJafMGkPrSt7dP5umVblgz2Lhb+XPqA7gbXSlom+2BiN11e
         WeQ1RB+rY7vJBLwxyU7Iw8UHeflCH7Sd0nMOPfRCHqE7gZ/MHUp1g8KVyL8w+mh6r5rI
         yeyArlJEs09DRSegoep5TfxR2/NPintMEw0u5OEQPnuS/3m0o8Xm8YB3pXFKEoZ/2KrG
         p6MbtRIoqyfEJVgncpFItFE67yI/0m41lEKJzB4JepYzzj9bJxmnKkWC+P45B1gEDfNI
         EFzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+/695xu7cZKlINKCUdD9IJjl1toioaUjMjz2Apw/bBE=;
        b=KbXHRiq62AC28P9uEBn7qK9b7iiEv32qbss0zS3w/wzLdP+SJRC43H84gp+OiNWUcn
         UfGkbFiJ9tCEIcUU6/7CxZle0atVY/n1VkTjKyQ7T8jfZ9GzAbQihbPBfI/pd82CmjjN
         S0u1F1G5n33vwgQLIJsu0Vpb1gE9wIDA/jBoOk7i4KlUAWUAvgGe/cf4HdCBk76/f/9k
         dE9MSFIiw6DRbGxEkqbtpmAeEl+wsLmSnRZYyY6ikhg73iwvT3VISpXrgu1VJem6XOOH
         +tg8/7TRAcN1GJezm6/y68v99A0l2y71Jne1a9Qkin0QotqrzPW6lzedNLD/LMFPmJDo
         wBaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+/695xu7cZKlINKCUdD9IJjl1toioaUjMjz2Apw/bBE=;
        b=acJENtcOUsTynv6WCgfhfY3DVnrDb7c1UTa8HX1wN4Eqq0MVhQh2uc/ctXKLjJ1ZEL
         BBLyOjo2OJeJR+xliG91bDPiZzta6rsK5Ul+0VAzmhHKk0x8nWp1FGHE3LAuestYZ9KW
         UoOa1pCB45x4XPkdIrWti4EL+yEY6p5WYhUi+BJijzU+W1EmTz6KZ9t7bCDWbhZNOD25
         fkfkdCMxxVcafOIm1eU2CjoNv6mgpvPSc6Pn9fyiRdeJTMeEoIiaTgnpEyDLjrWfJRiF
         NY6c6ZEf9sgObP5Vd/FbOl0iyJQrMVKxvjimQ77Ydh1YUsR3Q3KXly0b3sZnMp98tcE9
         uFzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+/695xu7cZKlINKCUdD9IJjl1toioaUjMjz2Apw/bBE=;
        b=OlFKtknIXb3UAsFJH36CGjXzP5CqSHy26YhlJD2nmr4o/0/XJF5ZVs/GiQe6XwbPzY
         8UdkQ2Z3DpyWMMxJGvdhoMiHRjMIQzZYRkb1WBPxa0vS1E21G+AE+GTMG4rwu8Jt87Qz
         AG7B6ZXao8J23MfpGs4qi+Pn0oJkiV+PK6XgYuL02Bh7GzOKbBH3a9ItC4qaIn89wNLa
         NTRiQSDBufp3Ck4aoLXDDU4n0Ql+zxqWu4bbXv5skPNPeyUra49xP55PV0Ine2n8zZUN
         23kmveSECOj133K+FRoiTXYbpUxTZSDz+EHWQe0uSThAonaf6rO1lqfwSTMkswqryiGa
         UQXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zSntXVg9kpxx85ltxes13Y8RSy2/3Yy0yRJTta2JpxslvCfou
	CBZVNsiHEvPdmRWWtmM3UjE=
X-Google-Smtp-Source: ABdhPJyhVOrlzmCf6Y3G6+NrscWez7LuBlcxybuGn3zBbWmxyd37ESGjpWnZYiVRJUcme91OHP/6cQ==
X-Received: by 2002:a1c:5502:: with SMTP id j2mr10716174wmb.56.1590782442921;
        Fri, 29 May 2020 13:00:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fac9:: with SMTP id a9ls8565807wrs.2.gmail; Fri, 29 May
 2020 13:00:42 -0700 (PDT)
X-Received: by 2002:a05:6000:1289:: with SMTP id f9mr10325606wrx.5.1590782442335;
        Fri, 29 May 2020 13:00:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590782442; cv=none;
        d=google.com; s=arc-20160816;
        b=Rr9zCLdAjt+WxURVdnMrcuVaJpIfcADe0uwMUEWR1mkVJ9tChamORQR79TwY63U3gp
         YUNwQ7Hoo9GC+8zHniMg2NKj40A3VsxrZgg09HiLtwu00SGfNCnzPg/bfEENDqwQsqXQ
         LbmRSNRKIXGLlMjTA4hsXJFW0yL3DY+Q8kEItjZZYEM40WliZSYQGRg81aQSkP8/Dsp5
         ZY/mXVf36ZkweqeGqApLMGvAXvCGZHQ0nSttKoEQbDdiM7U72c+POpxju/jFzHZW2+Jx
         s2aq+ezqnWLYZrIqeVrxU+M6qTOxj+TQFCPH8FZpnvi/RCzqaW0CI00abE4zjqqeNach
         QEMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=7txxll6SRkPowWemerozOM3IhaQQAUhnuMJpYE4sDPE=;
        b=Hb1r5nUUXeO0SAG4nKpHAYnv41TdILX5QA0e0EbKe8a/abeWXj0C5vRZdqrlPRpddn
         PR4CTl3Pv/DBo8xGEYx6RzlrbBgXlljgGRzEFuwYvsJxu1qnMyoLZSo+gErBiO7HIavR
         pkNUf8DANCk4aAarVlUw8QOcNUW02I/IpULntmmzQ2bjqjDX/gi1Frr/GUYxaXfCbFLw
         l4QFmP9myGqgPyhvONLf9HdpdZTIkaW994rYtJWuCQkrKxDfFsc5boHDg/yUdCwwuk7K
         8l4NZyGmWhReNHtrUGOjtL2jufnj+95loN9/BlcpO99Xwv9oGqMeXVDIaS9yGwPmyNL9
         K+nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.75])
        by gmr-mx.google.com with ESMTPS id w126si37601wma.4.2020.05.29.13.00.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 13:00:42 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.75;
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MkHEN-1jGNZx1rr7-00kj3D; Fri, 29 May 2020 22:00:40 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 2/9] staging: media: atomisp: declare 'struct device' before using it
Date: Fri, 29 May 2020 22:00:24 +0200
Message-Id: <20200529200031.4117841-2-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529200031.4117841-1-arnd@arndb.de>
References: <20200529200031.4117841-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:TarMTBYqeIin+lnZ4LmtumzaUlpm/qpb9KM44D2gAllthm2qRrv
 sC59cp8NfYINafBl2Vdc62hWHo8PDCDo5gs0KXVFJdxzbDBwGr4kaKkbTYcUeIN0dbHDuoz
 x+49RaodJ9WvlUyCSTRvFKe7lQKlToCkknwxWKJl5seuW//ppuMJfKGprZ3FdStSX5dMU0A
 9jyc66JdrDYJbBpjyGtng==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:agZbiHQ3QcI=:7qYJ0h5aCaOWsSDNrfq5CH
 qaSr3TmIoq2uEzVm8Q7EqUphclJUPPAOLl4X9InIsqvKpB/MO6s6tK7c6/oFcxLuCEhrufKts
 rQhxrNL/DMp+rVq2OHDexV/7svguarZHyvz/aL/kvxF+EeaGeORpdobYZ8Umt+BnPBSFJCU2X
 ID5vVJpkDdEAGHNtZI4amT7klgTwhc26+FEvCBxUG62XtIIs1vXbYFr6Ux25buwq8qX363OKM
 ELr+FHf1xwaybM/zakqPZStMWMWl+dovCRCEIT65T9l977Su/eq6+wk1sBe1vbkYZYuGY4J11
 G6AVkYWewWpiMKaGj5IOlAKINVKBjMxBley9rYMhC/jwSEwJyX2U3ecpYzK9/Vp4ZzNDdCZRg
 En9kgVOksCPW2MU1+xscYSqz65A7PlaELeuk7iRYe4DWjJU6o/gPlzOT+zKi01rMmbFtzHA2y
 +nX2ALvZOplgWBWgqroORiZZkkc8KOi1vQO/2vht/UNAS/JyvINYVaCClu5kpvnF0DGLvlSKg
 2oyYb+p/IAvi7W/CF1DjQK8tTw0suXiX6hk55fxTr34BheDzFfVqMmmAciDThPBWmqKTUxJcp
 QBswMwwhZcID8mDzAUtl+4IAOF4GyD44+txsmQe2vmFVGxb+ayQ2bYho1A1pPranfCgarRjy6
 6z59byyo8t+fD40ar3uOqJX0+M9Ifqdi9QLtid2FrBBoj5omZbVM6QvAzcuVLNkq9E//x5H0q
 Be08aE3Oy/+iIgHrnah8QttnzCe8lPPW6uzS1x/36ZAe9KVnGZ6XBkvDEZihRf9P5bSq1EFuI
 7IWstP1FHkMkbUL5HAqq9Yi8KKU8GtFDYlUGR4OxKuDJolWZeA=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.75 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

In some configurations, including this header leads to a warning:

drivers/staging/media/atomisp//pci/sh_css_firmware.h:41:38: error: declaration of 'struct device' will not be visible outside of this function [-Werror,-Wvisibility]

Make sure the struct tag is known before declaring a function
that uses it as an argument.

Fixes: 9d4fa1a16b28 ("media: atomisp: cleanup directory hierarchy")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/atomisp/pci/sh_css_firmware.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/atomisp/pci/sh_css_firmware.h b/drivers/staging/media/atomisp/pci/sh_css_firmware.h
index f6253392a6c9..317559c7689f 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_firmware.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_firmware.h
@@ -37,6 +37,7 @@ extern unsigned int sh_css_num_binaries;
 char
 *sh_css_get_fw_version(void);
 
+struct device;
 bool
 sh_css_check_firmware_version(struct device *dev, const char *fw_data);
 
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200529200031.4117841-2-arnd%40arndb.de.
