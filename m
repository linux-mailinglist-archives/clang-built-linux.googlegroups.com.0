Return-Path: <clang-built-linux+bncBCOI5MHU24HRB7PYWGDAMGQEN2ZKR2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3604A3AC948
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 12:59:11 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id x2-20020a17090ab002b029016e8b858193sf5901035pjq.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 03:59:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624013950; cv=pass;
        d=google.com; s=arc-20160816;
        b=C/8yBSCn4H1EK6Cjb3yu1desuxo869zlL7CUhccH8Ltto+lL/zPJ6E03aIsaGAxRlx
         +kVhB57UelSXHbHK+Lf6n/JIEn4FlstkGSPlqTJbUu1n3u72wXWXPMqESqr3PPz7DTjT
         1PzBU/3RM9LhOc2ZGr52C5HuL3YCZmKURlXAr+q1i46wxV4iSpM5uwWzL4KrxDO8Ma+3
         Ycj3W0pRKznDyhsTU+HzBAY7GKapk8ZDgSEwdgFxvHFRsM6NQV/igZfnczdgd0zecnH3
         JnTANmowOJjNAJR4hNca2i8IYz6xM7DO8UKsx7iowiWcVf8DWeX574foavzrbwUdL3D2
         GdNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=cIet+sDVdgojK9D3Ta8A1IlgvDdqq5xC6Wq4M5hEYJY=;
        b=lvsU2YUyv5jHocP4o2pvMQsM75yYxlAXLvuWc/sPe+CpSSjwlMEBenc7RsjThD1uza
         pNynEJSvcpUi3hrpiqp8v0+RVASo/yTGT1hrSSp2qAVEwMe9ol9kBOUJT8CFKAH1FbJo
         TArl79IkjUQt7biAPPSgcF3BpqzWBV+aKAGiOWMFctUAt28m74OSEaIkUEtF6SgOqTr3
         vhP+UloeZ8sZrYyFphkNaXzZjiXYD5roAUQWVS72e77DC4rX4vKOvomo8XNz+Zdy4QNn
         NGz2Yd4n+Y3VxFOEr/Tdpw8jn4JKPEU0wGG3bFkyCN/H7pVbBo0RIUBOJphjgccCXlPa
         EJrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PywNZv5o;
       spf=pass (google.com: domain of gumingtao1225@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=gumingtao1225@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cIet+sDVdgojK9D3Ta8A1IlgvDdqq5xC6Wq4M5hEYJY=;
        b=JIAnrrwiImkp3ide1IzV0HEFnVzhkZwimLof1BrXqMD6mhSeQLfQnWPDHy/Xp3FXfA
         djpAAeIK4OjQR8Z7vl+VDEnJfVXLxtZmke55QxJyyR2rbL9Hyezktr47xEa+EGu90rKm
         v50k4ZCWQjX9ajX4njp2Urx+1cojysmEkuIobNAVgNsy7QoybeI+xDgTINty79nemC5X
         mbvQV3navp+f7oTNKTksTMP0CSGnDrJ1WlzU+Y/2co5MOkNBxloEMHR5YD8kp/KpZQtz
         /s02EiWUFWuPkKCNdwdfBatdL/2N488K4ANDy0KTm6zGU3dSuSPsNmLc7BGcMG9jrizX
         ikjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cIet+sDVdgojK9D3Ta8A1IlgvDdqq5xC6Wq4M5hEYJY=;
        b=cYcWWlcGjmdinhbhq11DXYD+q9MCPjb59/vYLR/iOhq1+xZ3191OH3Naqi79If4Jv1
         6TXFqAwiae3Jzl/GqOrObU3kPjzQO+zybUkyQLd9pdgvL/v55N3djdWwIHztIVN3dfu2
         5n2i/O4lvgCny85cnvUkkwKOf5xcYpboZFmkbpwDTBx1TC2Kz85886Exc6sgsDkrbTqy
         xiwroZJhNwoYRkiSqqDQDsH/EyPeE40EenH/CfCmCYDBctmHsULcruvJDwT5ZcY830vN
         kNiDje/15zcsFrpTBmIAkRZel0Hn08GwBviZgFciYt1d+1jgcMv/bzDoYaIeKucP84oK
         D1TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cIet+sDVdgojK9D3Ta8A1IlgvDdqq5xC6Wq4M5hEYJY=;
        b=Gx1+7p7grdynyEbdLwa1Vtp8nUWSUljROi1wG7CrYxSwCS+Z6eMJVDhqb2nB50tpbx
         3nE0kuhhn//FQqKd4xJk9sqX63AdICJh63VujeiDh7FKVFP/xEDSSEinbUNPtSNosEnV
         tbRiWYXRbPyFlIEnCp5iWdvj6OLLv17I5ANU27nSysbnGBvrGTBr21EdpcyiVy56Jyv2
         Mj80ZDrxl/2Pu7P/w93nEewKZ1u2phRbojD0C4Fe2boMCjCulErx6yqRVluhKk6FesFY
         /rMJ3Niqb8S8g3riHMv8CcbQQ08ATchu/D8txsRXdy1vRMBB3IuTbSKvQTrh/SZxT4Nd
         wB7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531m/E7MTlO+WNLKGsW45bUC+RGYjJAq9+A5dvkmv8NQXrvTDWnm
	KIhlOsEeDCFTEzDKeFGsuOw=
X-Google-Smtp-Source: ABdhPJxdWT5+n3RrC4oSZsaZ7/reVW70FCyjIWxrEcUZnun/foraoj2efmiZAj3FL9Qcs+1QLL3qlA==
X-Received: by 2002:a17:90a:400e:: with SMTP id u14mr22061936pjc.33.1624013949832;
        Fri, 18 Jun 2021 03:59:09 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:764d:: with SMTP id r74ls4094127pfc.6.gmail; Fri, 18 Jun
 2021 03:59:09 -0700 (PDT)
X-Received: by 2002:a05:6a00:1825:b029:2ed:7930:cdad with SMTP id y37-20020a056a001825b02902ed7930cdadmr4728074pfa.18.1624013949290;
        Fri, 18 Jun 2021 03:59:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624013949; cv=none;
        d=google.com; s=arc-20160816;
        b=d+yEy2Nl/nyR6LiYi+Pw20a/VUwd62pEP9eudFgd0PTCtjmhXZeFWhOT3kff8/nwt9
         q5VTNapkLgfsTde59UiFOcmWEnZmJmbWQ6w9S8RKur//dQmOs/2R6Qus4vtA2+1ZzEKc
         MmOVFrLMXgVhcnCglD7Pf1nH1044zETWZkombNCLBN2pospqDy1irDmN8+dUstnJrWsY
         l2cw7eiluBIhZpneTcRR0IRU0nDNdT4V0GjJJXKa4h0N0qekq3l/xSEGAyhbTFGCf6L+
         66YngC6alkXxdsMcaCXNqLOSkBol5LYBejwbPg0lXueWU8VExp80sX8ocUYUb9MrSs1S
         u+MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=e545N6sFNQ6o79pBREpnT2Z+rEdK47XJm3J1l9SSnV0=;
        b=frR9PWJg2O3I83eBM0kuFGDPDxSFqT3pUS2V1JSHS9S5/mpsV41RtQkYkuh6eQNsI9
         ejBjCj+njrLMUDBaYOlLYz2F0YhN8ndHv6NsyPF2CfOP2g1W+N5verWl0pGRfilMampi
         SVt9jIic7ZZkdU5qbWCkQX6klg3rut2vYEXZlWeOPX+5kZ3lmDRIec9qFUhIYnZSEvd3
         l33KCrpeGfTO5zaJyxdilhZdRizTxp6TS9MJoXFoHRnRe+tGXFRt2IyOgUh5X2Ejvrny
         smvOfT0EtNCat6hvXAZ7ZCV5MG9W4PX3iDm5bq3lunsg4TRZ6DK7IpMP9GFCdGjPOw1y
         HnGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PywNZv5o;
       spf=pass (google.com: domain of gumingtao1225@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=gumingtao1225@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id a6si190902pls.4.2021.06.18.03.59.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 03:59:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gumingtao1225@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id t9so7492652pgn.4
        for <clang-built-linux@googlegroups.com>; Fri, 18 Jun 2021 03:59:09 -0700 (PDT)
X-Received: by 2002:aa7:829a:0:b029:2e9:e53:198d with SMTP id s26-20020aa7829a0000b02902e90e53198dmr4488637pfm.72.1624013948969;
        Fri, 18 Jun 2021 03:59:08 -0700 (PDT)
Received: from localhost ([209.9.72.215])
        by smtp.gmail.com with ESMTPSA id a11sm7859380pfl.168.2021.06.18.03.59.07
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Jun 2021 03:59:08 -0700 (PDT)
From: gumingtao <gumingtao1225@gmail.com>
To: cl@linux.com
Cc: penberg@kernel.org,
	rientjes@google.com,
	iamjoonsoo.kim@lge.com,
	akpm@linux-foundation.org,
	vbabka@suse.cz,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	gumingtao <gumingtao@xiaomi.com>
Subject: [PATCH] slab: Use %s instead of function name
Date: Fri, 18 Jun 2021 18:59:03 +0800
Message-Id: <1624013943-13935-1-git-send-email-gumingtao@xiaomi.com>
X-Mailer: git-send-email 2.7.4
X-Original-Sender: gumingtao1225@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PywNZv5o;       spf=pass
 (google.com: domain of gumingtao1225@gmail.com designates 2607:f8b0:4864:20::531
 as permitted sender) smtp.mailfrom=gumingtao1225@gmail.com;       dmarc=pass
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

It is better to replace the function name with %s.

Signed-off-by: gumingtao <gumingtao@xiaomi.com>
---
 mm/slab_common.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/mm/slab_common.c b/mm/slab_common.c
index a4a5714..36127dc 100644
--- a/mm/slab_common.c
+++ b/mm/slab_common.c
@@ -381,8 +381,8 @@ kmem_cache_create_usercopy(const char *name,
 			panic("kmem_cache_create: Failed to create slab '%s'. Error %d\n",
 				name, err);
 		else {
-			pr_warn("kmem_cache_create(%s) failed with error %d\n",
-				name, err);
+			pr_warn("%s(%s) failed with error %d\n",
+				__func__, name, err);
 			dump_stack();
 		}
 		return NULL;
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1624013943-13935-1-git-send-email-gumingtao%40xiaomi.com.
