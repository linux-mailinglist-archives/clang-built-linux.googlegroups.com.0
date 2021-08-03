Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAUKU6EAMGQE2FJK54A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 763C53DF7F8
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 00:36:51 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id e3-20020ac80b030000b029028ac1c46c2asf143983qti.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 15:36:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628030210; cv=pass;
        d=google.com; s=arc-20160816;
        b=YxoFA6Yci5LYeyfIB4VDcA/OqfLb7Qza9XbUx8/Og26nDZ954Io+w545oR2KUaiB2D
         dv/RggoBA8HFynxsrYZBt224S59p9N/+MJxmFPyo/MI0eYSObq2Ky7mp3LBaxM6B2HFb
         UJh02xn7Qh8kiw/gFjd7qbJQ6BmNCYj+IXo9tEvbGfJ+7XA21b/VjXGc4XIRsPE0kGwn
         5cD5TiLlhVxP9IUrpNPrml31JWtGJX/MoA8rxvAp/1rDaOMGaXz71Oy/AEfte8KKFvSo
         OXUUBCnEiFunOhxx06fTRIG7RTYlYfw2e8/LDLFEE2GALH4po/V32rIc1ZSu0YHCozge
         OSzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WAjPcJj814FWBHepbbQXVRF3QFABX1iIyBoRVjv7tEQ=;
        b=fYqtZGCrgo6/20zAX+SjRCBKQJXTckQF/dUi+7qsdcTpLDKLYt1A6mfV255NX0gpmR
         t3wEMabxPRMqwGnlPdF/4cFq3jGDNleEjsGQg3VeVnS/28NLNLvUmz8TKLsqsn8KtyNV
         bjr73a00RkYP5WbQvjQZhrmtJz5MlwYADkcj+WTgLC25sQcczB6sWZ7DTDLXKfV2kEuI
         OQoDHoagIMdittLN9pnRxD/zvzkAl0R+6GIwnCRg6vBAbzVb1rtguMfYJrEx3mP5Jloz
         O4dYZO9/FYDZUnkH8wiyuTvO99SigRKvCk8RW4ktlEfxJwlMXdv/7XuY/h2Gyvh2K4vC
         f6IA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iFlu01Rl;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WAjPcJj814FWBHepbbQXVRF3QFABX1iIyBoRVjv7tEQ=;
        b=EpTIeJPHy36MMgivY/z7SNHfOcHejkcfPuh/wKJtZCbecoTku/uAnd8t3OhKslWb8+
         XaG+bgCRByMapiL43A+VhmNfFxQXSbBHROh1Wz2niVcJ2D4eOUyCQVSQH134ek0vpoVf
         8pzWNSGGhGclwyNHWx1pv+ui2rYRauono87vufH0NGHjjh/Ua8tPu/qVlKiYeK7hZlLO
         8168V7awAWquHvuZ9mlmgD4iz5zoqe+lHOHOz0xsuacvuhIz0WmH71mwALa0WCXZSIF8
         ma+UMPyqeCPw7/ztaJk2QWa16RqUUxbpiyY2hEX6jtyguDH8qtNak1rLJ3yi84KvPO4c
         Omig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WAjPcJj814FWBHepbbQXVRF3QFABX1iIyBoRVjv7tEQ=;
        b=gVS0Sztsu7I+sKdVmHtAvGYGLF3ryfai2T+Qr0VhfuPUfJVjPmPXzRKJ2e5B0qxGzv
         mKtSz9C9eD2ojyVsevVJbEQuB9vYlXpqyAom4EQ373iNmiu0N4UwFGNpcRLVIDJ6j9ys
         AKNjdjT9VZj/Awy3I+MbUatYYto38ENQbZzhqTCl8hA1kcvyd25Mku/1cFY1/iBI6Fxf
         WchRudv7L2JWYaDsxxCz8jFyeX3qtYCwrOYkPFP8GgB7yS9dp1X7TFTw9TzhjAOqMK3E
         aEqJ4FkeEY2qPbL72tEDU2ELx+6VKePxRKgmD500LEWhMaYp/UYTP36NLD8/rXI9s9u6
         Af2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bOhmAsMO0znoUFS5SsbK4MQCWu2LcDdRYyBZEuAnfoDsiSM/m
	p3bS3BdregYP/JSBjHPBLwY=
X-Google-Smtp-Source: ABdhPJyftZsg0y7nzMyUd2h0bN1Auo6llKD0ansY6ZyWfZ7aR5pl42hMxH4sFq8WPT2olNvUH6MXjA==
X-Received: by 2002:a37:d52:: with SMTP id 79mr23096775qkn.227.1628030210460;
        Tue, 03 Aug 2021 15:36:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:540c:: with SMTP id f12ls105904qvt.5.gmail; Tue, 03 Aug
 2021 15:36:50 -0700 (PDT)
X-Received: by 2002:a0c:c612:: with SMTP id v18mr23582447qvi.20.1628030209978;
        Tue, 03 Aug 2021 15:36:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628030209; cv=none;
        d=google.com; s=arc-20160816;
        b=DesjE3F9q+fPGojalUjsJJR3S9HzeBvwzVcfVjSC6sunFJoVmIl4Q+9PTa3JVnmNru
         XQLSw37Ui/Un5Jz/oZy+nqst+uzx8DJ2UiJbeKX5oEU7/7cuXn4ZnPaeONyXcALwQBG/
         1L74ChluKRGbivAyH8mSQKuMCTPGUt3csQlwNJdfvQ6CeuGwcMFsiVyfEiZ8yfwv211N
         e4+x0kAvC9DJoH9GfVTb9ABDQIZDNfuXGBKsT+yUSX3cHXgR3m7maDQZhGlJCFpc4u5u
         GZo0K+o9Ntc6sPyKzbd7rX+RYZCVRoaiDF2ZmfHImL6CjMwCkxrBATKBgjoblrbaqvs4
         qNbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2OoCARk5q62D46I5qwgUuZdt/XQJjYEp5rAgKjcoL6U=;
        b=RekeG3oQT8CMfI0saLpskeXy/5HlvF5odqaOwr7F+8J7I7rLgwu3CjJVsVB4X6EZUl
         vJIYjdCPLxVK/AENzqE/5V2BitBVGYD790qTETgQujUtggt1hzeRn/A4/P83caovKTjx
         4chuo+/fYNOwg2NEumNvI1cad9qfVFprbWTu2hvsfS3yEnS5q7I66z0HHjUp1FvqY29/
         E4PyS2uzxaAwZpKvewu9KPCRTtJnKXMpULwSUWgDdGXrDAjP5Sj73xuHyOx5hIL/Shqz
         fDkj9NNeOR4xS33sJGrSMyrUIjeA1xpetzPzRumYHdn36AlzOFm17HmaL661qZSkiV1/
         C5+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iFlu01Rl;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id bi21si19664qkb.3.2021.08.03.15.36.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Aug 2021 15:36:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8BE7861103;
	Tue,  3 Aug 2021 22:36:47 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Phillip Potter <phil@philpotter.co.uk>,
	Larry Finger <Larry.Finger@lwfinger.net>
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 1/4] staging: r8188eu: Remove _rtw_spinlock_free()
Date: Tue,  3 Aug 2021 15:36:06 -0700
Message-Id: <20210803223609.1627280-2-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc0
In-Reply-To: <20210803223609.1627280-1-nathan@kernel.org>
References: <20210803223609.1627280-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=iFlu01Rl;       spf=pass
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

Clang warns:

drivers/staging/r8188eu/core/rtw_sta_mgt.c:156:13: warning: comparison
of address of 'psta->lock' not equal to a null pointer is always true
[-Wtautological-pointer-compare]
        if (&psta->lock != NULL)
             ~~~~~~^~~~    ~~~~
1 warning generated.

rtw_mfree_stainfo() is not called anywhere so this entire function can
be removed. Upon further inspection, _rtw_spinlock_free() is an empty
function so completely remove its use from the driver. Functions that
only call _rtw_spinlock_free() are eliminated as a byproduct.

rtw_mfree_all_stainfo() was eliminated because it would be the only
function left in rtw_mfree_sta_priv_lock() but it only iterates through
free_sta_queue, not doing anything else.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/staging/r8188eu/core/rtw_cmd.c        |  2 -
 drivers/staging/r8188eu/core/rtw_mlme.c       | 16 +---
 drivers/staging/r8188eu/core/rtw_recv.c       | 11 ---
 drivers/staging/r8188eu/core/rtw_sta_mgt.c    | 77 -------------------
 drivers/staging/r8188eu/core/rtw_xmit.c       | 19 -----
 .../staging/r8188eu/include/osdep_service.h   |  1 -
 drivers/staging/r8188eu/os_dep/os_intfs.c     |  2 -
 .../staging/r8188eu/os_dep/osdep_service.c    |  4 -
 8 files changed, 2 insertions(+), 130 deletions(-)

diff --git a/drivers/staging/r8188eu/core/rtw_cmd.c b/drivers/staging/r8188eu/core/rtw_cmd.c
index 4e17972ee66e..cb7d730286fe 100644
--- a/drivers/staging/r8188eu/core/rtw_cmd.c
+++ b/drivers/staging/r8188eu/core/rtw_cmd.c
@@ -96,8 +96,6 @@ void _rtw_free_cmd_priv (struct	cmd_priv *pcmdpriv)
 {
 
 	if (pcmdpriv) {
-		_rtw_spinlock_free(&(pcmdpriv->cmd_queue.lock));
-
 		if (pcmdpriv->cmd_allocated_buf)
 			kfree(pcmdpriv->cmd_allocated_buf);
 
diff --git a/drivers/staging/r8188eu/core/rtw_mlme.c b/drivers/staging/r8188eu/core/rtw_mlme.c
index a6d62074289f..fa4df4a3a2df 100644
--- a/drivers/staging/r8188eu/core/rtw_mlme.c
+++ b/drivers/staging/r8188eu/core/rtw_mlme.c
@@ -85,13 +85,6 @@ int	_rtw_init_mlme_priv (struct adapter *padapter)
 	return res;
 }
 
-static void rtw_mfree_mlme_priv_lock (struct mlme_priv *pmlmepriv)
-{
-	_rtw_spinlock_free(&pmlmepriv->lock);
-	_rtw_spinlock_free(&(pmlmepriv->free_bss_pool.lock));
-	_rtw_spinlock_free(&(pmlmepriv->scanned_queue.lock));
-}
-
 #if defined (CONFIG_88EU_AP_MODE)
 static void rtw_free_mlme_ie_data(u8 **ppie, u32 *plen)
 {
@@ -126,13 +119,8 @@ void _rtw_free_mlme_priv (struct mlme_priv *pmlmepriv)
 
 	rtw_free_mlme_priv_ie_data(pmlmepriv);
 
-	if (pmlmepriv) {
-		rtw_mfree_mlme_priv_lock (pmlmepriv);
-
-		if (pmlmepriv->free_bss_buf) {
-			rtw_vmfree(pmlmepriv->free_bss_buf, MAX_BSS_CNT * sizeof(struct wlan_network));
-		}
-	}
+	if (pmlmepriv && pmlmepriv->free_bss_buf)
+		rtw_vmfree(pmlmepriv->free_bss_buf, MAX_BSS_CNT * sizeof(struct wlan_network));
 
 }
 
diff --git a/drivers/staging/r8188eu/core/rtw_recv.c b/drivers/staging/r8188eu/core/rtw_recv.c
index 610cc699caf9..1889a7935c97 100644
--- a/drivers/staging/r8188eu/core/rtw_recv.c
+++ b/drivers/staging/r8188eu/core/rtw_recv.c
@@ -96,23 +96,12 @@ int _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter)
 	return res;
 }
 
-static void rtw_mfree_recv_priv_lock(struct recv_priv *precvpriv)
-{
-	_rtw_spinlock_free(&precvpriv->lock);
-	_rtw_spinlock_free(&precvpriv->free_recv_queue.lock);
-	_rtw_spinlock_free(&precvpriv->recv_pending_queue.lock);
-
-	_rtw_spinlock_free(&precvpriv->free_recv_buf_queue.lock);
-}
-
 void _rtw_free_recv_priv (struct recv_priv *precvpriv)
 {
 	struct adapter	*padapter = precvpriv->adapter;
 
 	rtw_free_uc_swdec_pending_queue(padapter);
 
-	rtw_mfree_recv_priv_lock(precvpriv);
-
 	rtw_os_recv_resource_free(precvpriv);
 
 	if (precvpriv->pallocated_frame_buf) {
diff --git a/drivers/staging/r8188eu/core/rtw_sta_mgt.c b/drivers/staging/r8188eu/core/rtw_sta_mgt.c
index feaf39fddf7c..f51d2f78e292 100644
--- a/drivers/staging/r8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/r8188eu/core/rtw_sta_mgt.c
@@ -127,81 +127,6 @@ inline struct sta_info *rtw_get_stainfo_by_offset(struct sta_priv *stapriv, int
 	return (struct sta_info *)(stapriv->pstainfo_buf + offset * sizeof(struct sta_info));
 }
 
-void	_rtw_free_sta_xmit_priv_lock(struct sta_xmit_priv *psta_xmitpriv);
-void	_rtw_free_sta_xmit_priv_lock(struct sta_xmit_priv *psta_xmitpriv)
-{
-
-	_rtw_spinlock_free(&psta_xmitpriv->lock);
-
-	_rtw_spinlock_free(&(psta_xmitpriv->be_q.sta_pending.lock));
-	_rtw_spinlock_free(&(psta_xmitpriv->bk_q.sta_pending.lock));
-	_rtw_spinlock_free(&(psta_xmitpriv->vi_q.sta_pending.lock));
-	_rtw_spinlock_free(&(psta_xmitpriv->vo_q.sta_pending.lock));
-
-}
-
-static void	_rtw_free_sta_recv_priv_lock(struct sta_recv_priv *psta_recvpriv)
-{
-
-	_rtw_spinlock_free(&psta_recvpriv->lock);
-
-	_rtw_spinlock_free(&(psta_recvpriv->defrag_q.lock));
-
-}
-
-void rtw_mfree_stainfo(struct sta_info *psta);
-void rtw_mfree_stainfo(struct sta_info *psta)
-{
-
-	if (&psta->lock != NULL)
-		 _rtw_spinlock_free(&psta->lock);
-
-	_rtw_free_sta_xmit_priv_lock(&psta->sta_xmitpriv);
-	_rtw_free_sta_recv_priv_lock(&psta->sta_recvpriv);
-
-}
-
-/*  this function is used to free the memory of lock || sema for all stainfos */
-void rtw_mfree_all_stainfo(struct sta_priv *pstapriv);
-void rtw_mfree_all_stainfo(struct sta_priv *pstapriv)
-{
-	struct list_head *plist, *phead;
-	struct sta_info *psta = NULL;
-
-	spin_lock_bh(&pstapriv->sta_hash_lock);
-
-	phead = get_list_head(&pstapriv->free_sta_queue);
-	plist = phead->next;
-
-	while (phead != plist) {
-		psta = container_of(plist, struct sta_info, list);
-		plist = plist->next;
-	}
-
-	spin_unlock_bh(&pstapriv->sta_hash_lock);
-}
-
-static void rtw_mfree_sta_priv_lock(struct sta_priv *pstapriv)
-{
-#ifdef CONFIG_88EU_AP_MODE
-	struct wlan_acl_pool *pacl_list = &pstapriv->acl_list;
-#endif
-
-	 rtw_mfree_all_stainfo(pstapriv); /* be done before free sta_hash_lock */
-
-	_rtw_spinlock_free(&pstapriv->free_sta_queue.lock);
-
-	_rtw_spinlock_free(&pstapriv->sta_hash_lock);
-	_rtw_spinlock_free(&pstapriv->wakeup_q.lock);
-	_rtw_spinlock_free(&pstapriv->sleep_q.lock);
-
-#ifdef CONFIG_88EU_AP_MODE
-	_rtw_spinlock_free(&pstapriv->asoc_list_lock);
-	_rtw_spinlock_free(&pstapriv->auth_list_lock);
-	_rtw_spinlock_free(&pacl_list->acl_node_q.lock);
-#endif
-}
-
 u32	_rtw_free_sta_priv(struct	sta_priv *pstapriv)
 {
 	struct list_head *phead, *plist;
@@ -230,8 +155,6 @@ u32	_rtw_free_sta_priv(struct	sta_priv *pstapriv)
 		spin_unlock_bh(&pstapriv->sta_hash_lock);
 		/*===============================*/
 
-		rtw_mfree_sta_priv_lock(pstapriv);
-
 		if (pstapriv->pallocated_stainfo_buf)
 			rtw_vmfree(pstapriv->pallocated_stainfo_buf, sizeof(struct sta_info)*NUM_STA+4);
 		}
diff --git a/drivers/staging/r8188eu/core/rtw_xmit.c b/drivers/staging/r8188eu/core/rtw_xmit.c
index 4a5393184737..499bb8ce0290 100644
--- a/drivers/staging/r8188eu/core/rtw_xmit.c
+++ b/drivers/staging/r8188eu/core/rtw_xmit.c
@@ -210,21 +210,6 @@ s32	_rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 	return res;
 }
 
-static void  rtw_mfree_xmit_priv_lock (struct xmit_priv *pxmitpriv)
-{
-	_rtw_spinlock_free(&pxmitpriv->lock);
-
-	_rtw_spinlock_free(&pxmitpriv->be_pending.lock);
-	_rtw_spinlock_free(&pxmitpriv->bk_pending.lock);
-	_rtw_spinlock_free(&pxmitpriv->vi_pending.lock);
-	_rtw_spinlock_free(&pxmitpriv->vo_pending.lock);
-	_rtw_spinlock_free(&pxmitpriv->bm_pending.lock);
-
-	_rtw_spinlock_free(&pxmitpriv->free_xmit_queue.lock);
-	_rtw_spinlock_free(&pxmitpriv->free_xmitbuf_queue.lock);
-	_rtw_spinlock_free(&pxmitpriv->pending_xmitbuf_queue.lock);
-}
-
 void _rtw_free_xmit_priv (struct xmit_priv *pxmitpriv)
 {
 	int i;
@@ -236,8 +221,6 @@ void _rtw_free_xmit_priv (struct xmit_priv *pxmitpriv)
 
 	rtw_hal_free_xmit_priv(padapter);
 
-	rtw_mfree_xmit_priv_lock(pxmitpriv);
-
 	if (pxmitpriv->pxmit_frame_buf == NULL)
 		return;
 
@@ -259,8 +242,6 @@ void _rtw_free_xmit_priv (struct xmit_priv *pxmitpriv)
 		rtw_vmfree(pxmitpriv->pallocated_xmitbuf, NR_XMITBUFF * sizeof(struct xmit_buf) + 4);
 
 	/*  free xmit extension buff */
-	_rtw_spinlock_free(&pxmitpriv->free_xmit_extbuf_queue.lock);
-
 	pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmit_extbuf;
 	for (i = 0; i < num_xmit_extbuf; i++) {
 		rtw_os_xmit_resource_free(padapter, pxmitbuf, (max_xmit_extbuf_size + XMITBUF_ALIGN_SZ));
diff --git a/drivers/staging/r8188eu/include/osdep_service.h b/drivers/staging/r8188eu/include/osdep_service.h
index ac0bd5cd0f82..df7f293981e7 100644
--- a/drivers/staging/r8188eu/include/osdep_service.h
+++ b/drivers/staging/r8188eu/include/osdep_service.h
@@ -230,7 +230,6 @@ void *rtw_malloc2d(int h, int w, int size);
 u32  _rtw_down_sema(struct semaphore *sema);
 void _rtw_mutex_init(struct mutex *pmutex);
 void _rtw_mutex_free(struct mutex *pmutex);
-void _rtw_spinlock_free(spinlock_t *plock);
 
 void _rtw_init_queue(struct __queue *pqueue);
 
diff --git a/drivers/staging/r8188eu/os_dep/os_intfs.c b/drivers/staging/r8188eu/os_dep/os_intfs.c
index 5f1ec883d6ed..935e35c82666 100644
--- a/drivers/staging/r8188eu/os_dep/os_intfs.c
+++ b/drivers/staging/r8188eu/os_dep/os_intfs.c
@@ -979,8 +979,6 @@ u8 rtw_free_drv_sw(struct adapter *padapter)
 	}
 	#endif
 
-	_rtw_spinlock_free(&padapter->br_ext_lock);
-
 	free_mlme_ext_priv(&padapter->mlmeextpriv);
 
 	rtw_free_cmd_priv(&padapter->cmdpriv);
diff --git a/drivers/staging/r8188eu/os_dep/osdep_service.c b/drivers/staging/r8188eu/os_dep/osdep_service.c
index 71d4fa25db86..a23f5e448bf4 100644
--- a/drivers/staging/r8188eu/os_dep/osdep_service.c
+++ b/drivers/staging/r8188eu/os_dep/osdep_service.c
@@ -118,10 +118,6 @@ void	_rtw_mutex_free(struct mutex *pmutex)
 	mutex_destroy(pmutex);
 }
 
-void	_rtw_spinlock_free(spinlock_t *plock)
-{
-}
-
 void	_rtw_init_queue(struct __queue *pqueue)
 {
 	INIT_LIST_HEAD(&(pqueue->queue));
-- 
2.33.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210803223609.1627280-2-nathan%40kernel.org.
