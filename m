Return-Path: <clang-built-linux+bncBC27X66SWQMBBUUU2P7QKGQEW6UJ7PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3313E2EB418
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 21:21:40 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id c21sf597721pjr.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 12:21:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609878099; cv=pass;
        d=google.com; s=arc-20160816;
        b=VrHmddaONYCwKCdMsKKTeqSrfqnNglvVvgIRRHpYaKmdaFxSwUvbetaWbZB+yBgde5
         /ydTPi4mRGkRUGAvy+Eh93THSmc5PJtK4ioE0d8FeSyV4wnVCPkaZpuS6hrUyijuKtIV
         cSxaUa9YUCioMUBU8RI0CTcqeT9mF6pvnRaE4pH+9UB8mpfl7V66mLXs792OHqaDLDqo
         hjTKrTWDENa3s5vIIh7WzAzCnol+xObOh80U18bgAB0g6Yl6hrApvKN6ORVkJBXA15xr
         805HglaogoCAzMwiZdkuhEelMUeCgM+4tWcAnoFtek42Hf+K1cC73UtBIdoelqXRXHkU
         GTqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=MYpQOVIzKY8nJm9P5wilj12tQSWZkDOR9DWUiO1F/+g=;
        b=TA678EFxjkJ9U1oRpGFRM7/WCeDZ/eHQLdv61j14WaEb4zM1+aUPY0Sem4G4+TtUHU
         qVNOSUTOvyjVC27SEC1bXhqlAEwGm5bhFYw7MBmBaMmRHZawGcjyOQtulJwDUd2HzMiw
         1eC3lu/Cb5ykrqLEFx5153fD8HxLuzboQ2VuELC3Wgjk0xjOD8EI05Mbr02lMx7fjK3F
         TLNI9Avzgb6OKB2UDmxn2+pJ6LdcwwAbDrJapzzP/IxCUap/Pmza4XGBN4J3ME4l3o6q
         cg6Hi+IsGqW5ZOuC/T9WM7kONfYVuTZjjuOyZFjCOgytOC04q85Zrv9lEl42cRcR32sI
         hJdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VMOY0eV4;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MYpQOVIzKY8nJm9P5wilj12tQSWZkDOR9DWUiO1F/+g=;
        b=ceWi/zomi0GiZjB4YN/HCxktI/2j0bKvkkDiklJS0hjRECRA8u8JHmw9NKQUF9ZCIQ
         NHJh/PIofrvnT2lPvMr1Yb+sX1zboLm3k+QO4AxufTrbaL5nIsfHM6AWYeJ/fbN2SYHe
         WLn7W3R0VR2DoBD2y6xiAjIYxasvNygBekvoXzn8ypA/kRUqCaM3BtWaFZZT+pu1ftaP
         wcNUTbdpUwmZlE07BTt25I703+O00Eg58OSCtpGg7+FVchPJ16kmPe+d8XUlWnh2dNqU
         LlatlQ5INWVf0eEtp7M22fNUWdn2qZJESwYM4WDJx27bqXu8P+L27nAzgXutmNCU4l1D
         AQsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MYpQOVIzKY8nJm9P5wilj12tQSWZkDOR9DWUiO1F/+g=;
        b=KmmJzxUpFJRhM/caAyF3Jcn/2ppffuRN0FJZl+y52twQq0jkFvyYaraLrBCMRbfwAo
         N5XJ+UTuqLpBMXBU1JZ59ValXkLIiNInCmtM/scNh/UW1ngwXBI73sT1tuVJhGn8FcYE
         7ZyJXBhjtM9IWp6Vo5Yavjn6/iNYNWxkDQXFQcWJWvv34eaZXsGFNRFtGv8FITv180tg
         XYHccLcuPD2zpAilNebcn9JHMkw5kHiOnVRkWh96wxoFQQoyt0RBFVysXRHVaZS6+YPx
         iRuc8a/E97dQmHllYW+OvJzkJbeirPfcWO1U95enam5pecoM2is/ssa4O3FVLw3MVptA
         vRYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317fBEuuxpblJjXJL2ImNWp+U5yexJDY9j0M4coGyEq7tbmrm3I
	z0kwuSxDgQZY3JotwaOqMb8=
X-Google-Smtp-Source: ABdhPJxBLlKOVkRNrQmFcAyGKHwlyXbwQ8tUvwi82gE4aBZ9Z27ziV75WNqtBGKBks3oi5OEHCnZPQ==
X-Received: by 2002:a17:90b:4c03:: with SMTP id na3mr822759pjb.173.1609878098821;
        Tue, 05 Jan 2021 12:21:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4881:: with SMTP id b1ls252041pjh.1.gmail; Tue, 05
 Jan 2021 12:21:38 -0800 (PST)
X-Received: by 2002:a17:90b:1983:: with SMTP id mv3mr863986pjb.211.1609878098217;
        Tue, 05 Jan 2021 12:21:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609878098; cv=none;
        d=google.com; s=arc-20160816;
        b=CsBUMndGCAWHQqPAkt4W4YlINBZ1dgQMj3MObYRTYvRW1eQUZOX0ioO1rbIJtdsX5o
         FFD4PGRreX/5FN1WyEnDqFhCnIDL/hJPyVtxLdH9hdMQ1iQXIRZMKpc/DoLXC+T3hAXQ
         FaqHBokS+j9sxi8a567mgqLOWh4V2J6N0UiEz1ysYlpF6lgUpNP8Jds0QrZaeeOk2uDW
         Z0lg8kDcIbJQ+XHdG0rHsJt+A/+mqEecbIH9jq5qUgcrir9F1XbCuCMqi9Viv5SF1D9S
         iYuUfc9ySSmOYALkcO8QEKt89Gj2LtMxrFk1boNy0N4KZKuzdBbfeVRg7ghbfOaV/kvG
         6pKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=MOxye5B0xRpCyzwF8z9vUvxQiwEx40pS01MW13zeLxA=;
        b=l3l06+/YdMCtNRMdMaioIqMC7XH5vqdTgZVkQXFkw9Gh5bNqrpVaMiyfvjLemNLPvG
         XdtKr3Qo4PrAK2wsHrBXIYvbUqllL7qVeEn1GYL93L+tl5kWhGmbvFpb562v8XQxcKbu
         4X9QKwy4ogxtHVB7AJ0Js172zgAY8B0SuSh9yMV9tmS9z/v1r1Bj3G8QLiuhSKuXj2SY
         hxsttis8/zjZhawX9DkcfsL4czb0ntCUvv3Q8Wa6LL6ZBW4kircgInj3l6jfICgyLD+g
         BnlH1gCRWKu13x2KY+P5q0c3tYVPcvHLZq7q2rv7LCh4z+8xAdzcaKL2skzSe5bpx4h3
         Rwew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VMOY0eV4;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id c3si29193pll.0.2021.01.05.12.21.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Jan 2021 12:21:38 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com
 [209.85.215.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-566-gOVu5ypJMmuvd_yA9HoZng-1; Tue, 05 Jan 2021 15:21:33 -0500
X-MC-Unique: gOVu5ypJMmuvd_yA9HoZng-1
Received: by mail-pg1-f199.google.com with SMTP id 18so250601pgp.22
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 12:21:33 -0800 (PST)
X-Received: by 2002:a17:902:7449:b029:dc:bc:65de with SMTP id e9-20020a1709027449b02900dc00bc65demr825400plt.79.1609878092724;
        Tue, 05 Jan 2021 12:21:32 -0800 (PST)
X-Received: by 2002:a17:902:7449:b029:dc:bc:65de with SMTP id e9-20020a1709027449b02900dc00bc65demr825384plt.79.1609878092509;
        Tue, 05 Jan 2021 12:21:32 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id u189sm225398pfb.51.2021.01.05.12.21.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jan 2021 12:21:31 -0800 (PST)
From: trix@redhat.com
To: sfrench@samba.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	aaptel@suse.com,
	palcantara@suse.de
Cc: linux-cifs@vger.kernel.org,
	samba-technical@lists.samba.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] cifs: check pointer before freeing
Date: Tue,  5 Jan 2021 12:21:26 -0800
Message-Id: <20210105202126.2879650-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=VMOY0eV4;
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
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

clang static analysis reports this problem

dfs_cache.c:591:2: warning: Argument to kfree() is a constant address
  (18446744073709551614), which is not memory allocated by malloc()
        kfree(vi);
        ^~~~~~~~~

In dfs_cache_del_vol() the volume info pointer 'vi' being freed
is the return of a call to find_vol().  The large constant address
is find_vol() returning an error.

Add an error check to dfs_cache_del_vol() similar to the one done
in dfs_cache_update_vol().

Fixes: 54be1f6c1c37 ("cifs: Add DFS cache routines")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 fs/cifs/dfs_cache.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/cifs/dfs_cache.c b/fs/cifs/dfs_cache.c
index 6ad6ba5f6ebe..0fdb0de7ff86 100644
--- a/fs/cifs/dfs_cache.c
+++ b/fs/cifs/dfs_cache.c
@@ -1260,7 +1260,8 @@ void dfs_cache_del_vol(const char *fullpath)
 	vi = find_vol(fullpath);
 	spin_unlock(&vol_list_lock);
 
-	kref_put(&vi->refcnt, vol_release);
+	if (!IS_ERR(vi))
+		kref_put(&vi->refcnt, vol_release);
 }
 
 /**
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210105202126.2879650-1-trix%40redhat.com.
