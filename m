Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBBFE2LWAKGQEX5VNPQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0F9C87C2
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 14:03:16 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id h12sf10702078eda.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 05:03:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570017796; cv=pass;
        d=google.com; s=arc-20160816;
        b=pH3Jh0noDzCHuaN/9cwCDfK/XHuVzZYJFZ4HBDb9PfmqMq/9dYKinp/Elg/DsDULbc
         VNAzSsPVBKrWQsCPA/4xCsmZ9Qg8lyCXqnlXOzsUNGpKtpnI+fYhTCkw8S4ZwDjzxspi
         vPPpD8jmi1RHsQRAGorLuJLvG9xI/cm1+EnChHTvtYOuSYnQL3lDmZfmZ/mRr7de80cl
         Ymy3K3V0y3WMwsSUP07m7aoJoj5HYi5EugTGBKonFzEqR4TGWUv+Y3NAJZKw3dXP3Nnp
         6zFga0seY5YoALmIQrZAcJ1LA+Ec8jSFcaTDxgoXBwFK6oiv4LLEMYtSx3a7kMai+5Rc
         gozw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4sMV2OTI7aXLaHcS1NGIKSJnmStobqStTNKnSge3gWw=;
        b=UmAX8M16HhJtnhLAxmuFKhHY18sqhhLCbx9xO4JD1YTnIJPxWXkInjPu3TjyxHWBDG
         0r9Mtt4tJC+gbxW240YuMIO80BsTdDa/D5FA08Uv0+zvRQKBW8+ZlR8rXHIN63qgbx21
         uiZBTXliUYdJ2CALsDkGPLDSS8Zo7UUotfbcdCJp/TFnOVu6ZtYW4Tu9p80zDHpVWLDY
         ntwD3kGxtX2ygMlHcuXgOptkY+2QEK7lGPTDa/ZAlfAXCk9/cB2q5EOcg3Fl3q7ykAcN
         kR9UU1ORCH7nuNbwlOqMg8sbA32Kr6G6s7iT24Rd+zvs1L5JHT0frEa9J6c4PNMdsfaJ
         hG6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4sMV2OTI7aXLaHcS1NGIKSJnmStobqStTNKnSge3gWw=;
        b=HkvFXLvrItgR4Jl7s63YlO9JwIzGWMzPI0UHphSxEMINOZ1+MN7F3eBFzSNreNX+Zq
         AHoHTEDANnyf7STCAwQApTlyruZcSwTTU4QpySFIDkAgS/8VMC5x8XSesPlQBQ7Pt0Bl
         5PN0UIeFaxRPqcNH4kJwcob7DINVqivWTCHxwsOGOZJmxHf0Vj9qHYBhSFGCe6XKGvew
         EJnsl7HsJ8g8knAzD0SGbIm7gx+ryZPgAIAuUr1bfSF8Xds5j2AS2a8qm1HjdVCqvIA3
         iFm9e2FPFjOZQXUo9ZmvaBkBFj7ifObC4pygJY/2T599CbeMXBDOJEad2MlKV0TCUzas
         XDsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4sMV2OTI7aXLaHcS1NGIKSJnmStobqStTNKnSge3gWw=;
        b=X+uzAPAwKw0j/bo75IegTI77g1T9nrB5bbadD6KwrMDCeVMpOqeXLJGafZ3MjloAkc
         zdAEb5k+TiPw5NJh0uhwOolmAjJ7/LXySL+TRBnRAy+x5MV8oMcupftaQSUKEYyHhzjz
         6kVs8912y9zS70kjrxsqcn+Tnlzvy1cuk4KzOZ+/96bABTIn0jGL8V56QAaSt8qj5/vI
         Zyt2DHeBAVzuRER3SiVO8ggP0SLAhK5rHIoFzMoaRpWLmd7DuoEtsAbFcN9NIXVD6Dnb
         jKeKwEQsv/6JqU6jzXFO5E2iXxWvDEmtXBjGgRuMiB5Q2EHzU4k6iDI2Dn7wp/b4ASeo
         T7CQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU2CXS1L2A4Fm/2BrY59U8RNUWcGjGdVdD4yyXIANizUqrWR3Jp
	GRFH7pZYyUsO9fpcjWQHbgM=
X-Google-Smtp-Source: APXvYqxN5KUiQ0I0knPzADYnIclW0BQIChLS8wU3Zu2+JK0x+pjR0stks7pwso0YDaKn4rXZOKzkJQ==
X-Received: by 2002:a17:906:18e2:: with SMTP id e2mr2637126ejf.129.1570017796140;
        Wed, 02 Oct 2019 05:03:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:f11b:: with SMTP id w27ls505499edl.1.gmail; Wed, 02 Oct
 2019 05:03:15 -0700 (PDT)
X-Received: by 2002:aa7:cd18:: with SMTP id b24mr3278413edw.181.1570017795647;
        Wed, 02 Oct 2019 05:03:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570017795; cv=none;
        d=google.com; s=arc-20160816;
        b=hiwpzO4pXeRdZz/Y7M6x06iIy1YLVLzcZ1sCClo3FSESDeO6LI3OozLyUXtoYAd/mK
         vGc6yajgQrEtfUb1XzqJd7XhmHeUZy6yt3gmUkocLz2B+6wNPva3+U27ackXwGy1TDmv
         VXjW+z7SxI2XVkd/90EAHCtnlIa7EnLagUfMEN1qe3b8/6+pSigj9p9PkQz+AkEpSHuX
         K/GLz3pilk8KbmlRTURjIdPDih7QDsH2YippzGL1uRPoFvqlnq1myuyvCF6QJ35eqYso
         yIsK9GaDG8FcZgSPwfOlP7s4VoaShQ1uis04w3UelrXO8DwH2APk4I4JizDYTMChIfNV
         0h9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=uCBURTB9U+mDgNDa5X84zsyqfwAXT/CTyut/W5lwSrE=;
        b=sqoif6Hc57y21OHn/5GmfyZkkT9d3EqRdH9uFHAY6RzC0lk4W4ObVawiRP+2td8b1c
         5JZ5KEnhvo3yZRagk57dJ6uS0a9xRPIAGTq6kV8UboBAM/duvqUHAD/Ol4Wp1wSOXu/K
         P5lgGA3Ty5C0b79abHTKuI8hbG7PH1/cUpLo73d8Zb+mbKJXb+M6whW94V2OBnLxg3wt
         YJzbPPhx321+TH/i9lPWudBlUxBOXCD84TChU8z5talmkwSJFCMQcXu38/Sh/HcFEGYr
         xkVcU7+FnjVBra/8zy1pH3gXI6GwWsQ/OUMn2H5jc1eHtGRUXI9F8JmPAKVsJ9cfvF95
         w3qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.135])
        by gmr-mx.google.com with ESMTPS id q8si999559edn.5.2019.10.02.05.03.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Oct 2019 05:03:15 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.135;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N1Ofr-1i9piT0TlL-012rXj; Wed, 02 Oct 2019 14:03:14 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Alex Deucher <alexander.deucher@amd.com>,
	Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: clang-built-linux@googlegroups.com,
	amd-gfx@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Arnd Bergmann <arnd@arndb.de>,
	Dingchen Zhang <dingchen.zhang@amd.com>,
	Harry Wentland <Harry.Wentland@amd.com>,
	Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>,
	David Francis <David.Francis@amd.com>,
	Mario Kleiner <mario.kleiner.de@gmail.com>
Subject: [PATCH 5/6] [RESEND] drm/amd/display: hide an unused variable
Date: Wed,  2 Oct 2019 14:01:26 +0200
Message-Id: <20191002120136.1777161-6-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191002120136.1777161-1-arnd@arndb.de>
References: <20191002120136.1777161-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:1n5M6zZR4G8yBL9D3/PPSqfSjJLO9/wJ7CFXKkY1GhO9dfbJMYH
 BiSgOyk4TECZnA3BSyAneDEqnYgbFD97WeiIo4lGIG8gXruAgbG+OFz8JrMXpu4H9o9caks
 Np/4Fh8LpTmpmV6Xp3jiphnuOB/fVWxp/AAMAajPUx40WWakIcnYsfRjRKmzW5r6zab6tVy
 JE6I3T9syZxzU4/jUrblQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:naTv7zcdLbg=:K0DiYgcUAFUIvZNSJLnPhF
 TR8ONd0H5vlFNo9s+S173Y0i1yWRmEuEcfuiUtbDNfeQhxSN4qbsGQHKYowzOslPG4Xwm7iHh
 gLASVPq3d4YTmFVY590C6iuhoOJzAB5eYIIgr05Gqlx7CR668I669LA90dj/iyUKfUnzDrJar
 LZnab4p+nt4C4PfV897q0HFaPFLgvb4CmfyFymF3TvMXJiRpUBZ/RyI74KSi8LbvKSGujvfCO
 1XxJ7oH1mtw+Uf/jeyTxbL3aLzXfCQ+Q+eywDgTgJeZe3/r0Lz/5jR1N81AhAsov/jhUCgVo6
 G0CACRv6k5HfVXr+LnzU0RVPue/t4oSmm85X4QRjO0ycxRun1YW6GPKbjEwl6yUGrTUgmes5M
 CgZ0b57xUI4cr2Wlaqz5XI8wYnCPRsRr0gepZx+7vQWrBsqUQTgE5ON7U//qfRVQq1V1NIXk7
 WjCYrftUGzz3p28lAANIFZ4BngPJZ4u+GXqo4gKtFnoZvSgr21XuTwMH/A485jWmMFBJ4DaRh
 ukxFYBiYyuPHV2Tl6J1cZGw5HUNurtA9UsNc8Q74rboxhdw2enud8CsC9XRY7kGZA2msxsqPv
 H0gce7q61WH6+lviiLyAo1pFAzVRqZtO6m/awVb2gVLoqKkPV+MmqwTdK9A9eDVNGRzbb7/MH
 lK67JYsSZffsn0qHPiBDie2qQ8aZn+wGUas5aQQTxxx2XT67KtbTtz63FbJ13tyJMgyRViIR8
 YwFfXd6rCOs4ZuKJxz0nSW1QHEgR65YGVuNpb2rKl85o8Drf2xLESyWNx0lD6BXPq3KRSGCgQ
 O9STRSdwbZkJFO0E3wLP734Wopq5REw03eGLVciu1Uh0Xt3UtA0Fx7J17HWcsDzq/AWzmSv7N
 fu42zs35kwyPfqf/bz9A==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.135 is neither permitted nor denied by best guess
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

Without CONFIG_DEBUG_FS, we get a warning for an unused
variable:

drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:6020:33: error: unused variable 'source' [-Werror,-Wunused-variable]

Hide the variable in an #ifdef like its only users.

Fixes: 14b2584636c6 ("drm/amd/display: add functionality to grab DPRX CRC entries.")
Reviewed-by: Harry Wentland <harry.wentland@amd.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
This was a bugfix for a commit that landed in v5.4-rc1. The
fix was applied by Alex Deucher on Sep 19, but is still not
seen in linux-next.
Resending to make sure this makes it into v5.4-final, but
please ignore if this is already coming.
---
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index 8cab6da512a0..7516a6436822 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -6019,7 +6019,9 @@ static void amdgpu_dm_enable_crtc_interrupts(struct drm_device *dev,
 	struct drm_crtc *crtc;
 	struct drm_crtc_state *old_crtc_state, *new_crtc_state;
 	int i;
+#ifdef CONFIG_DEBUG_FS
 	enum amdgpu_dm_pipe_crc_source source;
+#endif
 
 	for_each_oldnew_crtc_in_state(state, crtc, old_crtc_state,
 				      new_crtc_state, i) {
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191002120136.1777161-6-arnd%40arndb.de.
