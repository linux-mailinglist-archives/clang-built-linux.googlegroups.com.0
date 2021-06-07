Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBFWL7KCQMGQEKOPFHRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id CB71539E9DF
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 01:02:47 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id c19-20020a0568303153b0290315c1232768sf12536300ots.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 16:02:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623106966; cv=pass;
        d=google.com; s=arc-20160816;
        b=saDHUgxEgrW7ylCbnS/sCHokWmovU+CKdlBB4UmECqEjiZNBstz8SdKcsYdHCLGQ2g
         YNJMeY0sp1pYD5iz35hboMOVm6TNyXG4nm8dDH7WnqA52xZN0a7wAvnmG3ixHA5fTdtq
         ybZ4sNDE8dTmWjRfrgqkTJC4kpZgpHqgMBwJXHpMtn2BI9JJ5ovg7uXSUEJ8tWGppu7n
         PkDTUfPoJ1SfH//nHZaJAHJGiy2E912uJxaGzX/KNtGUhqIsDCJZYjlE5tENZ8q8ohra
         7FrkgDofQzzgZvtSTS4z39HoYSu48l9pOh8uQH8N7zfblC4aOKjac8BsywrHe9DPP76i
         +xdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=wTW0DHuPhLdNnPHGOFBL6ok+OUZKlSy8AELUq91/CyM=;
        b=xiN+ZRXtquzdgIpb4KGgPk9Dq+hU1slI5SDtAvoErGu6ht8EPnd4wx9xyLbD8HcWYf
         UuElbjpGFZ1uzU77m2Laln0wfiOcYl84RNM2yr+F5iL6xS4IQMDjGalpKX+9arAcjTDd
         cSFDZ/ngeKQ3HWAcfkaxIg3qCQOQJCZb1v+HqAsyyedwPuLG5/8h4PlZGrIXkdJckKVw
         J60sKS2ruvuEW8yXGNHPYod5tcanBdI5VFcj+Lwcx7AcdNJKHnDqDeKz1RgJeN63dxpd
         SmWPhQ26ew6h94O4j9nMwNnZGJPWZ5Xggw2aRja4AOsozAbqBzC4GJ8q6IkpUEX6aEsv
         zzeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NDXRPS6z;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wTW0DHuPhLdNnPHGOFBL6ok+OUZKlSy8AELUq91/CyM=;
        b=YbLU+afHfX6WHr0NX7aOcAXTKeSV8QpVDFeA6R1fr5W+E83ffn7Pvn1GT2uuygTXJy
         mN4/JfF9Z5OOL3w2Y+mW8Db0EcLBq3B0ZdfqdF7D8I8NllnNcC7iy1m18rJSUBv3mz2d
         V9r3SDck572YRtVHA4Dr0PR2pFU+ZjCVhGNH64VGlhdcJ4yt1ImEAi/MY2Ehp/SDqsbf
         v4mVh0OqhMHe0iMwKOm+iekDBC0yhbI9CUtQOPwAWElWCJTzegsNh5Ng+uXXPl1GOXFA
         dHmZ2nj+wscsnU+JB0Uwz4/W6NCRI16bIg3bOEv3RRfQKOmsbx8BqFC26ZMHpMmyNNaW
         iURA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wTW0DHuPhLdNnPHGOFBL6ok+OUZKlSy8AELUq91/CyM=;
        b=BHFnaGis9Pk/iuOgtwiVGDyA1NB5LJleTmoTqwMnL48TBdVXp3/H/GxIWe6Bhn5qir
         Vp/NxtdimW1FqcrSX7gA+hSlLZsM8/r1/AalLb7rT2eaKuJdKVtnbPkoRpU1qloY71tt
         II3IZbid7KpAk5hmTDRSJZkvHw+xjbB/+h7QYSbgCaDubDvY8Xl8EJusisP0oYZqD9vD
         lMBYBYIG0Sc9qX5t5VYEcf+5MjpT3K9Dr1wd5M+S9Q5NQ1kuObL6tR4MXHoNvROOuZHO
         yvqwkOJ/FkGRtVA3zfM+Dgb3PmOi3Yx52r0vhyK2ViPIRrmGqC4P073oPhhDNoDNSKVa
         fzbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tRpIhiXyIIKlbidRpn575mSzawOYIausej2vWNibYO6F8sNVT
	SFh3MtSnxQ58JcQ5WPT4+Lc=
X-Google-Smtp-Source: ABdhPJz2bEUqH3yXai9Kd4onfcTHeARoG927HuzoPQD10EA6ntY0Ntto1SyRJ9UrsbUOABjUX9Qqyg==
X-Received: by 2002:a05:6830:17cc:: with SMTP id p12mr15289443ota.270.1623106966556;
        Mon, 07 Jun 2021 16:02:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4d16:: with SMTP id n22ls1000104otf.11.gmail; Mon, 07
 Jun 2021 16:02:46 -0700 (PDT)
X-Received: by 2002:a05:6830:2472:: with SMTP id x50mr15641429otr.277.1623106966134;
        Mon, 07 Jun 2021 16:02:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623106966; cv=none;
        d=google.com; s=arc-20160816;
        b=DvxYILkJTcefyRDh/EeF9zFxJOrErQg/2Y9asUeVxif/YeAX+f1A7HnG4wMDBA05jc
         XI+oTO5hDlHKIhBBgpRXQKfA6ED2eT9C4dS+2cu6bSuSfy4A/YuubgLCGRu6iNl3HzJ1
         TxQNHczTHvK6oZemOgt0e7JVUimHwFMNiDlC7zTZSlemylSmvRQdk5bkoJgz2Um7O2fP
         wRBIF5po2zVluhzuxBk63MiX2YK9cbhdi0sW9n3ApZbohJx/rEqgjR0txjMZR6iBez6Q
         r8CtHJN65FFrFrqhWMe0prKojgXpitAIx6ioQSuzaL0GYPksi1Jvd+7efqAb7w+Gdz6D
         rv2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=jPM6iDc84ozMhah8UQSSD8eMgX6HXfVm3Mo9DHBVHtc=;
        b=rwE3A1OfiR6cUT9OkgLGMwL+AqeQ2kPzLiUZysHkLfTLEKU45Xz7FWrl0Aua9d1e77
         in56l31t36HRc5R+dElIX1ggmXD/n7JdzWmGor2FPIuCRrDvcDSsnl6ZiZhLGgYrkxci
         cWkrTUtjuKJq73a9fX3J6uzrW1BkJRl49vNTb4qhDBDoc268S/iWbsG7feNs5H2Kf9uc
         caYOJqmWlDL/mFVxYQgtpHqJFUeVagJbzuKsEPwR/vA5orAHsdOIap10rT8gum5Juqtf
         V5Yyi8bVY0l2kyVRv1xuSn6W64ni5QUTRd4h7tARvpkN5x2CHjz66mFMjpBo3RdUehrv
         QElw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NDXRPS6z;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id d13si862525oti.0.2021.06.07.16.02.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jun 2021 16:02:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Received: by mail-pg1-x52d.google.com with SMTP id j12so15003873pgh.7
        for <clang-built-linux@googlegroups.com>; Mon, 07 Jun 2021 16:02:46 -0700 (PDT)
X-Received: by 2002:a63:8c5c:: with SMTP id q28mr12604815pgn.442.1623106965538;
        Mon, 07 Jun 2021 16:02:45 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s123sm8907376pfb.78.2021.06.07.16.02.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 16:02:45 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Bill Wendling <wcw@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [PATCH] pgo: Clean up prf_open() error paths
Date: Mon,  7 Jun 2021 16:02:41 -0700
Message-Id: <20210607230241.3797373-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; g=a1ab192e75f5e174777b97b45774cbf320075d88; i=kbTASCeMqCM8sUncqpkIJ334IjzMsbFIrlnmwZl9s0M=; m=7xelWwDysTUfBHv7E5dEuCRyzI+PXkhcJ0W5hQOySa4=; p=rp9lMf5mwmgB1rWUhzC3chVXbburHSZuTTQ+ad9t/es=
X-Patch-Sig: m=pgp; i=keescook@chromium.org; s=0x0x8972F4DFDC6DC026; b=iQIzBAABCgAdFiEEpcP2jyKd1g9yPm4TiXL039xtwCYFAmC+pZEACgkQiXL039xtwCYUcg/7BFv ZlFB/Jsziuinfy48HKwcqI9Jfb3wx8MWWHB9w+3WLoYvNJFaiPMy+vqo4naqX7ei4x8drEzWb/TPz oXS7IZ4Zbul1CbkDm64f07XS+mqMMDNUpAqOuNSqJfpQ3IuBMAvnhtmOnAzEJz9V/rp2Gk+P8yUa9 OdbcfqCyEXx1B31FK3ED4lA95tY3j6JE/cGa66IlTPG2M3QKyGV8fxMMNwW4vJad+w2YNm7lyiwX3 NrjV0iR1RklUtPl0wetbEyow5dAPO6jB2AeDHKQdWpppKnlVKRB9fIW435cBa8tRK3ha71+UoxeKb y35+yaZ5ROpIymb191jPrGGEoXQa/Nbgv+m10kCQDf5v5eEuNMnrnbpG7smMq16iPt2XI9xTGbIFF fNQpO+WXQg9QNRKIgibcq98LSZXsCYqc4YJty4CHwKDaLtHlRaHKMUkWSbINqFXwrjmPJKgnlJtr6 TqW8XOSCsLWT+CvNauj1wAykcWkXbWCRAdHsEbKm0VCPX2Ad5zmzYwhgKibOAza12sQbG4NBUhSq1 ELkctEaupkHT8RqVcMBGRGyxD6F6cV4ff4/OG/pVGzAaYT9ZFZukgC3GtCjwOaFSPQlyQ2B6hwhaZ uQb+AXkt2DzkfAoTQz5m4R+OqvatBeAqx2beraJ/CPKSxDutveiwWVfVDQR8teic=
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=NDXRPS6z;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52d
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Change coding style for prf_open() error handling paths. Additionally
fix up comments to be complete sentences with punctuation.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
This is on top of Jarmo's recent fixes.
---
 kernel/pgo/fs.c | 49 ++++++++++++++++++++-----------------------------
 1 file changed, 20 insertions(+), 29 deletions(-)

diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
index 0ce0dc9caf7a..3c5aa7c2a4ce 100644
--- a/kernel/pgo/fs.c
+++ b/kernel/pgo/fs.c
@@ -234,17 +234,14 @@ static unsigned long prf_buffer_size(void)
  */
 static int prf_serialize(struct prf_private_data *p, size_t buf_size)
 {
-	int err = 0;
 	void *buffer;
 
 	/* get buffer size, again. */
 	p->size = prf_buffer_size();
 
 	/* check for unlikely overflow. */
-	if (p->size > buf_size) {
-		err = -EAGAIN;
-		goto out;
-	}
+	if (p->size > buf_size)
+		return -EAGAIN;
 
 	buffer = p->buffer;
 
@@ -256,8 +253,7 @@ static int prf_serialize(struct prf_private_data *p, size_t buf_size)
 
 	prf_serialize_values(&buffer);
 
-out:
-	return err;
+	return 0;
 }
 
 /* open() implementation for PGO. Creates a copy of the profiling data set. */
@@ -266,52 +262,47 @@ static int prf_open(struct inode *inode, struct file *file)
 	struct prf_private_data *data;
 	unsigned long flags;
 	size_t buf_size;
-	int err = 0;
+	int err = -EINVAL;
 
 	data = kzalloc(sizeof(*data), GFP_KERNEL);
-	if (!data) {
-		err = -ENOMEM;
-		goto out_free;
-	}
+	if (!data)
+		return -ENOMEM;
 
-	/* get initial buffer size */
+	/* Get initial buffer size. */
 	flags = prf_lock();
 	data->size = prf_buffer_size();
 	prf_unlock(flags);
 
 	do {
-		if (data->buffer)
-			vfree(data->buffer);
+		vfree(data->buffer);
 
-		/* allocate, round up to page size. */
+		/* Allocate, round up to page size. */
 		buf_size = PAGE_ALIGN(data->size);
 		data->buffer = vzalloc(buf_size);
 
 		if (!data->buffer) {
 			err = -ENOMEM;
-			goto out_free;
+			break;
 		}
 
 		/*
-		 * try serialize and get actual
-		 * data length in data->size
+		 * Try serialize and get actual
+		 * data length in data->size.
 		 */
 		flags = prf_lock();
 		err = prf_serialize(data, buf_size);
 		prf_unlock(flags);
-		/* in unlikely case, try again. */
+		/* In unlikely case, try again. */
 	} while (err == -EAGAIN);
 
-	if (err)
-		goto out_free;
-
-	file->private_data = data;
-	return 0;
+	if (err < 0) {
+		if (data)
+			vfree(data->buffer);
+		kfree(data);
+	} else {
+		file->private_data = data;
+	}
 
-out_free:
-	if (data)
-		vfree(data->buffer);
-	kfree(data);
 	return err;
 }
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210607230241.3797373-1-keescook%40chromium.org.
