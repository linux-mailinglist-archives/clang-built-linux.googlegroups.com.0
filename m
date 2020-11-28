Return-Path: <clang-built-linux+bncBDM3FG7YWUNBBVG7RH7AKGQEHAC5YLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id A84B02C6FCE
	for <lists+clang-built-linux@lfdr.de>; Sat, 28 Nov 2020 16:42:14 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id m15sf1927197pgs.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Nov 2020 07:42:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606578133; cv=pass;
        d=google.com; s=arc-20160816;
        b=v7Y6WDEDNs1wdS4V8KhESJZQi6hEZd6oYGh/9nAJL9qgtMGiBq3d9pauvp7iTXG41N
         WQbtWTMLGV+evxHxSlkIcXfkeeMD7+/0zJq/ktR0bAGw2WnB8vObD9LYqcpBzDioj74O
         ywShS4AEouwZdbEIyp7MkEAOMqkimUoVE6IB2KTr7dinnm6V68rwmFPKHge+ZaRXNXWV
         IlYQchUP0uZDu8wpvz5JtfF1aLBperx7QjcVXbUql9VPAl0q+o1pnPbxZIsqU4KxKLZD
         e+0pZfT0mBF8r7XFoF9eHDINy4dDe53tYpnV54EB9YNayXeXY8l8QAYU/SvswqL4D9vk
         WDuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=Y9z11B+A7nYk/DRHTrEBMfFvCsIVMxlntIAnzWMUDAA=;
        b=ABt0RpFGBifSnj5ATDrjO/jWSoL95/lN5vM/IY85amPfPThJad3IQCLEYDDL805u5y
         W2ch31f518cKUYANtbnu93gjeK3iNGhn2spaW5e44Z3Kb86LtyA5OtQdG+5qxO0y++JM
         cfP3us7gB86P8h1503j0eE27aXNg9sy0N5zxa9gRctSow48U2vd7UdHy/tIqac+evh5R
         psDME5E1AzpXI5wQYouV/JHMhXU4EEOc8ikxc0yDyyHSdPhhn/iwDeAWPR6V1kkkSmu/
         MycULunzFLcKvAuCguLcVAUZ0ayj/fOYLCrmNwC2JSHy0KmgOroX0juyhp5XxRC/2BK1
         P0RQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oaAV9LTL;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y9z11B+A7nYk/DRHTrEBMfFvCsIVMxlntIAnzWMUDAA=;
        b=BR1QHCzwk9whsijHJjrIla4pvY+VDaqN7vNl1mTQ9KMopQrnp+K4qbKDjKdPgn6/xm
         aMhfQWeGI3LzEF4IebfbTmjszOBPZkK0qyudha0mOAv7NeBoOGStc7AgN8wyn8+2VQkg
         J4IkMg0ka/FqcW3EdVUr/i4QRfbBgOrkmyFrSqIwWgx+6KMyaNsQuOWE5za18UGHH+y3
         Aq5b67aRgs7XmcbCl4FIcBknuTyaAIBTx8UAhnCjaMsMIuhvmdqwA/EvLhnv074NxIjs
         JnCYqSWeg8SYXGXnnH2mJaB7jLneJMQQR+6K0TRymWH72sYbDaVIQ/wn/hHUsB38ibbu
         0YOQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y9z11B+A7nYk/DRHTrEBMfFvCsIVMxlntIAnzWMUDAA=;
        b=ga9zf4nF4B+jgiWE0sNlZj3tBXXWMllxs+qldP5HBL3PCW194TSyILRAIH2omg/EkF
         /AYMQPia2pxqbZyX+6tyw3Y0/jjQQtOJWRAxgQB9wCcCWoA8zTpGPeUEMB686m6+8a98
         LCbbaEf/xBralWwrWDbSTyREa14zrafdLJ/2qRBcIEO+7cejaB9X4K9oaHmjm4UGYUZa
         ZecOZwCeBkdlir37uSHnXq3C8dgFHNS9Nk/IU/wfqX4WtU5zHor5LAX2wMmvdFcCOJKi
         lLJtwuehBIzcAUL2aPOX1BNWVkaQLBpZ94jcS3k3rkS7d4lXRA/ZJKBjkZ8pquG1U4Xw
         TgSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y9z11B+A7nYk/DRHTrEBMfFvCsIVMxlntIAnzWMUDAA=;
        b=NbtpTnVJ8uKThKs63iBkeYhS2NWd8GtIozgyEXHRDSfLFxJ7CDdoMuk3swDsML1f7u
         Sj3ssY9ZMDj7HScclTT31GXrxd8/wIx5BDkuDyrJj9YvbkovC4yFNXgLbD9l+lJp2/Oa
         oJBsHCgY72XGmmS0+f0zNd31RwlYQoeiqi/wS3N2r9l/y9GzWJ9AKzhllYatXuSxBGZS
         kW5lqfVqOzsNphstBuNujCGYlJu0kzEhAb3doclFOkg2sUqMCHnwAQ72tN1NOXHlzwfN
         HiDd5WFzFXjQKT8dcJVJdwxMVivZcASR21jXk0Gy4xWW6bmXqgoB5rKYYeC6dITTDAd4
         POow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530AvH/1d6njkIaVSPKxpToDpU6JUkg/7Uf2UVxBiC9TyFvEpFEx
	+YzcfGF9m5orUzh2DW3HvkU=
X-Google-Smtp-Source: ABdhPJzruqanUDF4YwOo32KZJmytPevBPKCCklfUf+c5WdFmfFfI+593ex6iZzx8zTp5svIOCHCp0A==
X-Received: by 2002:a65:6a46:: with SMTP id o6mr11098852pgu.36.1606578133105;
        Sat, 28 Nov 2020 07:42:13 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7745:: with SMTP id s66ls3041669pfc.0.gmail; Sat, 28 Nov
 2020 07:42:12 -0800 (PST)
X-Received: by 2002:a62:25c7:0:b029:156:72a3:b0c0 with SMTP id l190-20020a6225c70000b029015672a3b0c0mr11483549pfl.59.1606578132437;
        Sat, 28 Nov 2020 07:42:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606578132; cv=none;
        d=google.com; s=arc-20160816;
        b=caT5JLk6dtN5vITlw2sWfmVtXkuLFHzNt6pl5sgdU/6BZQJtmdsGVSF2/8QuGDUq88
         u4oZhO7nFuKwg5DA5Tpm6kxgj+JkedqPVEpclcRI8VFv809fEzz5is+tEZvTHZPawSOi
         fzRr4hoECuZUlCGQRw60N/WKK/FPuqAyL4QLfxL4g4Ei1g3apyOdXmOEybJj4f0yi4yX
         zfgnweQsjOlAGHi+xIHQ7czcIMRQSoNxazjcz/jQPkIkZ1y47uK5ove/ahApdOCf560z
         ZTHHNTrPxAwkcAa8cYSZreBOWCrZHfOj0TBSgdw9d412GWkW7xtts7Lsp9uZDVEVO8yX
         JFIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=lT4ugpRxM+U436g85kVh5NxCK7gn8GFnxue2bFMn0YY=;
        b=jKBoZBNrhN+J2TirzHXhdPJuM1LsK0mM482dOATqZPR/GO+xuMFtpgf/uV9Rll8Kj1
         0RawNyghMCaa3WYo/oIz4mt/8+hG2d6/Y5dZ08/bi4/eozVGadGaN6U2CI50Bhb0N/Df
         lLW4KBJ6DnbWdKuv+CSxJBjo/cTGjKSeVVtmvBMIshTg41lD+8tlckXqMka7OW+ib/SZ
         ANNTQHmqq9l67epev3/W2ebw0OTVLyNp05WJ7f4a+lgsEi3oZUnSvcK7X9Vnm07NPOrq
         6ew0g8LD5j7h8c4McH65HAraZqqbQIDBu53CGyf8xSO86uWExRw3J9EtH/B5StMbzUqm
         38YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oaAV9LTL;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id j124si683450pfb.2.2020.11.28.07.42.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Nov 2020 07:42:12 -0800 (PST)
Received-SPF: pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id t21so6713584pgl.3
        for <clang-built-linux@googlegroups.com>; Sat, 28 Nov 2020 07:42:12 -0800 (PST)
X-Received: by 2002:a63:ec50:: with SMTP id r16mr10640493pgj.281.1606578132138;
        Sat, 28 Nov 2020 07:42:12 -0800 (PST)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.167.220.174])
        by smtp.gmail.com with ESMTPSA id q29sm11401667pfg.146.2020.11.28.07.42.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Nov 2020 07:42:11 -0800 (PST)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: hca@linux.ibm.com,
	kbuild-all@lists.01.org,
	svens@linux.ibm.com
Cc: clang-built-linux@googlegroups.com,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	Souptick Joarder <jrdr.linux@gmail.com>
Subject: [PATCH linux-next] include/getcpu.h: Fixed kernel test robot warning
Date: Sat, 28 Nov 2020 21:11:57 +0530
Message-Id: <1606578117-2895-1-git-send-email-jrdr.linux@gmail.com>
X-Mailer: git-send-email 1.9.1
X-Original-Sender: jrdr.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oaAV9LTL;       spf=pass
 (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;       dmarc=pass
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

Kernel test robot generates below warning ->

>> arch/s390/kernel/vdso64/getcpu.c:8:5: warning: no previous prototype
>> for function '__s390_vdso_getcpu' [-Wmissing-prototypes]
   int __s390_vdso_getcpu(unsigned *cpu, unsigned *node, struct
getcpu_cache *unused)
       ^
   arch/s390/kernel/vdso64/getcpu.c:8:1: note: declare 'static' if the
function is not intended to be used outside of this translation unit
   int __s390_vdso_getcpu(unsigned *cpu, unsigned *node, struct
getcpu_cache *unused)
   ^
   static
   1 warning generated.

vim +/__s390_vdso_getcpu +8 arch/s390/kernel/vdso64/getcpu.c

     7
   > 8  int __s390_vdso_getcpu(unsigned *cpu, unsigned *node, struct
   > getcpu_cache *unused)

It is fixed by adding a prototype.

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
---
 include/linux/getcpu.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/getcpu.h b/include/linux/getcpu.h
index c304dcd..43c9208 100644
--- a/include/linux/getcpu.h
+++ b/include/linux/getcpu.h
@@ -16,4 +16,5 @@ struct getcpu_cache {
 	unsigned long blob[128 / sizeof(long)];
 };
 
+int __s390_vdso_getcpu(unsigned *cpu, unsigned *node, struct getcpu_cache *unused);
 #endif
-- 
1.9.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1606578117-2895-1-git-send-email-jrdr.linux%40gmail.com.
