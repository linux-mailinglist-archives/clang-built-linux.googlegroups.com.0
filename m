Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTWG6KEAMGQEL7H3WXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D3D3EFAB7
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:06:07 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id h38-20020a9d14290000b02904ceed859e6esf468330oth.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:06:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266767; cv=pass;
        d=google.com; s=arc-20160816;
        b=n2ahrl0VRZbQdbhJTEf/ujb3uJ7ysU+M9WJmY6xNagbdAXDsK5MJkWI7qxJxsPZaZr
         2k3DHMo13ogE7E4KN5ZAUzYoAWzUvlkC27eBYidtBjUw5bDSMsCVBdRKlwqHRPnp361G
         vZwJrzPt4a+9AUt6H966bYf4+vJxCWLpvLQwdzQ16ZJxHOE4IpnPU08vXhHeBTRI36cn
         iAKZjUNQ56DZG8h84LdAcAxf6HV6DWTetrirOlrGe7MWTGNClSfE9mVJOY176gWC46zz
         4QXHC5kRTS5GqThQp6K30MTZ0OdAtWcHyCG9kuMLLorStFkmqOUsE1lP+wP44YVJY5vG
         MDYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8+NFe7D5Be9fbMUpjyGrQfcCsKSJBngYYvmip9MaSMA=;
        b=O1M3AQAfCCxQfrC1LTEVNhOj45/ClX6EcLWzgrMMlVksEaDdRmulpqZOvC5HnC/xPB
         4Ty1ySNFz2TOuwf70Ny8lkgZEw+xIuKvWharxL6uMCNSO0PmqU46/ah8YBUSFZdcVKjx
         aaLUxdV0+uz0SSKrcJ3v/FIwosKhD4jTIrbkpYb4xlN2wAmFj2kuow+59/B7XRI+qRuA
         A35ujSkVOo7xmdOJjSInQKOxEqP5TKldV8Z9CNl+j0b5GIXgzxbtoglFaCSD1D4tJyrL
         wuT02zkdMU9UKpdAw7kCWzfgWRQdUm2thV1GNrZTGuayzK5l8e4UgAUsfCNZW2paA+09
         Y2CA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=A5I0FSkL;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8+NFe7D5Be9fbMUpjyGrQfcCsKSJBngYYvmip9MaSMA=;
        b=BlaLG/7CpUuFMvmGrUlRlPFWZPGWHfQQqaeYka5QsMR6IDseSC5NVbmt+Fp13Al7ii
         wdFvQsko7Uh0H5lNTJUXtmTFwd3Oz+alQewpBH+3sR4RE6NQF7CfFQqZdK1tL0ed1FH7
         TACxDQQEmZ2KnaV0mBSeKJj71YctcTiPyHfhpKELR/Oz/yVtPPZiagt7FZbyO9PfgxWi
         nif9Byu4xuDT9Vx+LMt4UlhkDB52bjLBBziGkbpSFZ6ryAenNOWBeIHl+Oyt8GJtqcah
         NluRKpGQ9/fFqL80xaKBXG1uepT0g0pjYur2ClG6wH0tA8As/O2V6aYUra3dIg1UW7mf
         cShA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8+NFe7D5Be9fbMUpjyGrQfcCsKSJBngYYvmip9MaSMA=;
        b=HUCje68ntjOvb60dXLbk1fh0i/mTMCL+C/MDnFb/+RrBZWMrd9IUExbqLTrdFai0ep
         z34krhpF8SSZ/4wJuYHw/JaMWsrYhkoouOcrDpMc7uT2p6//jXXFpK/zHyG8kAyYZIyF
         DgD3DVJ55aGGwqvUHVk+FX6KdISKx3LIkBr+aAJ3veiq+JdG7q7m003/9dn7GmQ29IWA
         Loe93KjFUoMBGeOvpNTUWrtgV6+uHHDvFzmrIP6GX+C2HTFFjdt/+X0zgPSN8puZfv0I
         deTU7j4j+xFTP1Y/NjhL5650OBF1Y91iI7qqMAe9JUVacYzos2s4ZS93OoMJD5TMGQda
         pOcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KxLmJSPd8knT+cnBk8ypCr8SfYWtTMVoIs/mTxQgKbCzd+I2u
	lbXh6si3G/lJ7lTbVCsEEFI=
X-Google-Smtp-Source: ABdhPJxr+b4d9cNDayAkZCtYmVAdg+XQZTDoBOjKnBht1fGmMOHi5Sgxgmny8d0zY3VTOCKeHbL0gA==
X-Received: by 2002:aca:5c0a:: with SMTP id q10mr5927948oib.11.1629266766895;
        Tue, 17 Aug 2021 23:06:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:188:: with SMTP id q8ls290111ota.7.gmail; Tue, 17
 Aug 2021 23:06:06 -0700 (PDT)
X-Received: by 2002:a9d:5d15:: with SMTP id b21mr5593505oti.356.1629266766600;
        Tue, 17 Aug 2021 23:06:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266766; cv=none;
        d=google.com; s=arc-20160816;
        b=jXhVcfKn5b9rbki71FBUXawnNOtQHo1OjeUdz+3N10cgm1pJRwEz1mIzxnBDKmdKXK
         SCzDVxS431S8F+m6TQ/z6tQD5b8gAO38ZoLA34gs92UcPIVdUNyDpWuVFPeF8FSkSoCO
         7YlkIJ3G/wdT6i0fNs3gFul3PsaVJPgcyclVq0K2KUKkT24Z8DtRSCx+/m2fngV8FRzL
         Zaq68smYalWoSI1B3hMOu3Q7srbLkpQq4tB78jxmtMLDWIMg4bxWfqKI9AmWEOHPEXGr
         HUHAZCZDBMictYFohfpAA0yvkh+YyBjcRcFy/I4LCBEt8wSlo6k41DnfVrQC+Kn1zTjj
         aagg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Bf2aGZjkA9ZdJwTs2unG/S+9qMUhCrqY/7iHdHkH31E=;
        b=IX8E7BZhWXzn8EbBRLCFvqHcezdY+obsO+Dl1Ty07+0yRXt7EZr0l3eoyJ65y+kLpq
         bVKNZy+tdsYeKNmABAje7edV1YZmgrk0dBqEKUzc06fJfnbFnHFnpmRkKQPdRTEpq4AT
         KNsQ4px2RNkz7vSBJhdwhe7795DmY/P+DfC1PYVlodX2Hr19PoNKNDpTzrG1k2jzoEha
         HtmQDv2raLMmHqHAPHs7xDeHkBJ5mFftJpbL66P2WMHw4j7FFrdFn01v84jFYUVK1guR
         G/9JIBqFgs5bNptsEirSPrwcytd/K0o/NZ6QBFN3YcFYpVNafgkWivA2aYe1ghVG2oTC
         u2lQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=A5I0FSkL;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id k2si432560oou.2.2021.08.17.23.06.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:06:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id o2so1144302pgr.9
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:06:06 -0700 (PDT)
X-Received: by 2002:a63:101c:: with SMTP id f28mr7267532pgl.330.1629266766044;
        Tue, 17 Aug 2021 23:06:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c9sm5531358pgq.58.2021.08.17.23.06.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:06:02 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Julian Wiedmann <jwi@linux.ibm.com>,
	Karsten Graul <kgraul@linux.ibm.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-s390@vger.kernel.org,
	netdev@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 60/63] net/af_iucv: Use struct_group() to zero struct iucv_sock region
Date: Tue, 17 Aug 2021 23:05:30 -0700
Message-Id: <20210818060533.3569517-61-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2231; h=from:subject; bh=bmKbsRP16CnR5PXdPB4ZiDx9DBCysB2r4z9hIIKiJic=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMrUiy3wzC2Tbpf2LUdDadDtk7FYIB+hFtnsIrW fkTfIlqJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjKwAKCRCJcvTf3G3AJkYyD/ 9ucWeKdq8Xqqc/QXVsAWFOW9NzYhLInbMDw4OW5CozZyRbnOPk352gq63xaqMFMsclZFLEMQ9TTO33 7OYOFG7yKLJH7xWiqIvXwLztLuZw+JXSioGcmPOGOtg8hAXa8jiQ1KixmMPPGspos7hxqSuEzt31Y0 tNY4L/eDOvurxWrZsBGWm1b1k5PsAc+g8zMvnFzCBDhHj7YU0n+DSqAqBOzdrAc/BDQ6WwCtZWZgHn VVMCXM0qPf/ljXYEYnUK+ZZnl/WfbDvNoDPpsLQ0zZXhIhNtT3BKEfer/GfabdgopxSGXxTV+7JLfW 4zvjCOjHDppWfw99ppMZmvMvDN3k26ttKsLH7cVJ+kxEk9IZohT1lAGOfHEd7n+qAs4B4SrYMGb0uM wnIP+9JGQlViNQCZz8651n9z1vC3LX6PQlO5oS2pjadtH/dqxOhmIw392G3ODhOfboU0ZOnPR3pfTA vv8hjA/ukE5Dt/9T5+e3XaDNef7XzWGuEJy//3iyWc+lV/f+ruPwosN4rWo7gnyIbF2CgCgdasK6ZN PvgpQFRdA0UU/KoP4B9xx0S3rtUne33iTi/VsaHcMSUoisF52ghW2rt/M1apXDnx8RSFOroKKUUTSX 3+F+WfyISvDRWznlKXQ44kQRHNtJUEKNW8cFL9JBRk7SYT4Mh7lRv9p5s4KQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=A5I0FSkL;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Add struct_group() to mark the region of struct iucv_sock that gets
initialized to zero. Avoid the future warning:

In function 'fortify_memset_chk',
    inlined from 'iucv_sock_alloc' at net/iucv/af_iucv.c:476:2:
./include/linux/fortify-string.h:199:4: warning: call to '__write_overflow_field' declared with attribute warning: detected write beyond size of field (1st parameter); maybe use struct_group()? [-Wattribute-warning]
  199 |    __write_overflow_field(p_size_field, size);
      |    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Cc: Julian Wiedmann <jwi@linux.ibm.com>
Cc: Karsten Graul <kgraul@linux.ibm.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: linux-s390@vger.kernel.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/net/iucv/af_iucv.h | 10 ++++++----
 net/iucv/af_iucv.c         |  2 +-
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/include/net/iucv/af_iucv.h b/include/net/iucv/af_iucv.h
index ff06246dbbb9..df85d19fbf84 100644
--- a/include/net/iucv/af_iucv.h
+++ b/include/net/iucv/af_iucv.h
@@ -112,10 +112,12 @@ enum iucv_tx_notify {
 
 struct iucv_sock {
 	struct sock		sk;
-	char			src_user_id[8];
-	char			src_name[8];
-	char			dst_user_id[8];
-	char			dst_name[8];
+	struct_group(init,
+		char		src_user_id[8];
+		char		src_name[8];
+		char		dst_user_id[8];
+		char		dst_name[8];
+	);
 	struct list_head	accept_q;
 	spinlock_t		accept_q_lock;
 	struct sock		*parent;
diff --git a/net/iucv/af_iucv.c b/net/iucv/af_iucv.c
index 18316ee3c692..9446e2771d31 100644
--- a/net/iucv/af_iucv.c
+++ b/net/iucv/af_iucv.c
@@ -473,7 +473,7 @@ static struct sock *iucv_sock_alloc(struct socket *sock, int proto, gfp_t prio,
 	atomic_set(&iucv->msg_recv, 0);
 	iucv->path = NULL;
 	iucv->sk_txnotify = afiucv_hs_callback_txnotify;
-	memset(&iucv->src_user_id , 0, 32);
+	memset(&iucv->init, 0, sizeof(iucv->init));
 	if (pr_iucv)
 		iucv->transport = AF_IUCV_TRANS_IUCV;
 	else
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-61-keescook%40chromium.org.
