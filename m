Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBWVD2LWAKGQEYSRB6OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id C289DC87B6
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 14:02:34 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id i10sf7384082wrb.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 05:02:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570017754; cv=pass;
        d=google.com; s=arc-20160816;
        b=O4AJO2j9985qF8yabM2OIJ2BrNQbAv5c2x8JwP8sWYGSncnoZuvQ/t+YXBDZoDrVJF
         UCxRI9ipPyTH7G2G0P0DxqPXfJAf57lFDFx7umYj5L6AjLLhiUktdz2E6u1e5SR3rh8E
         xsgwKEbTNOsc8+aiBOgyo8t3zn1XbnhdNejQdqV0/BZNbC4cf/5ksFPj2CchHnz4UT9G
         IFHvSGpO4Hh4iJ0WtpMbY2WCaEbmqJaUxk+/qS9Xbmlgj9+KaVGoOqODj32sgUIyGB1R
         lAnXTcEFxX0wEJPnzF4hNpTRENfY/++G9E16jatyGUKdU6t/i+KiiSAZTKVl12eiKYzj
         1zPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=VglZexUfbq6q3MhizlHOqi6C2XXhZggrlFJCTyXaLzs=;
        b=EsjZPELS6hsshPSO+LnUK9AwBsreEB5ICdtWWjmr29IFI3QjKN83zmszgOTfdjKuVG
         SZWopcw/J5TEiuv16556TbHFx9APYf/5gsxKySz+6S8lKwdwWaKl3T2wZG3mL40DDla1
         pJ/ADQok/VS1S3zUhlyWbouliRloVLkaWCmU+Qftm7yKgvwMbL31WJNiRfBvthhWHD5W
         hZN33ax9toZXjG/IeOSHOw+1LTZVOsqcEBtbalo3LhYI8mjeLxHIiEONFekx8kzvXTkN
         6Hc588+28qbzCIOZR6SGfKZME/CHES28wn8zj2dsStB4BtEIT6qY1MPBWPzrcSZU65jM
         NBGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VglZexUfbq6q3MhizlHOqi6C2XXhZggrlFJCTyXaLzs=;
        b=gKjKgSPcIeOCM/bDcu1gCruudBZ5g7t5nQiYmqwvJWXueVt9hV+RrLMMRkXU+Ij9QB
         etMebQlEOzQwSM6VDmHIiAqJsOfRWFH0zffswwFhq6VW8nsSmwtp8eYNo5TbzMhJLlCi
         k6ia8brAV8qu5yZRNk04jYuC92ClPmjv+8E/BdFfKO/NNIMcfU9gtw4uBfwyaYUIPp13
         1Q8IhaLiszG4mkWq6fjRV/s6YIA8WiCSzlpaqPiu5Zj6ELNBVUXUg+VB12p2RNBg359W
         gWfB5EqNdMdvFcuamMjvK9XBT8EUW/5ZD/fTT27bLnXeOE9EDfkJfrtedegWIlPI03UU
         Km0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VglZexUfbq6q3MhizlHOqi6C2XXhZggrlFJCTyXaLzs=;
        b=pO0CzjP+3/27VeZv4POy1qWDHG2n704jAA0KFxLt387FW3ovwSXeJZNAhqyM7o7XYo
         ex6vUqeknhVO9V4sPy9P9zjnNoiL16MQQz5dhJn4VvZEL91BvcUj9lSm6gGY/xrtpHCL
         qIVBz0r3282EzZpzKrOBMjZqYuowScvS731Ip+W2DUmvKKscTQZIofRqeqoAtfxbjBAU
         NEOL2NTGPXBK2E9sQlB7jquEATmF8Bn+DLT+C5qZlri2zFfRx75JFVL4TtSGwLYffx6k
         2eSCPQFM7Nk+Aq40cqp/Y6JrpW8nBgeho6zBxm9QA0eMJfnhnrsNNYgjn2xuGIZ3BdPg
         EG+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVvzBf4RjMVWCVqVAlQc4lYcGgTjCUr8OEyQ5NTKgr3mmqR99Pa
	3r68CY0d8k2l0h5cj5IBcdM=
X-Google-Smtp-Source: APXvYqxy5Z/0tm76mwtiu3S1/oPM0qJwTYtFg8Uh8vgc6sG8JXqffY3hbQu5FOjdvh6Aqd2Pqhkxlw==
X-Received: by 2002:a5d:45c6:: with SMTP id b6mr1726069wrs.4.1570017754483;
        Wed, 02 Oct 2019 05:02:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6889:: with SMTP id h9ls624544wru.13.gmail; Wed, 02 Oct
 2019 05:02:34 -0700 (PDT)
X-Received: by 2002:adf:ce83:: with SMTP id r3mr29623wrn.219.1570017754037;
        Wed, 02 Oct 2019 05:02:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570017754; cv=none;
        d=google.com; s=arc-20160816;
        b=bbLzXUDSB70gFCk8A1AY8/61+IjAUNTmQMVUtd3krK8l1kfXyM0D1cT4E624d+BK4m
         QJ2IY+lxFEUguVxJSMCyGwWHjIy4y/XLDYAAMDdREynuac+ZmkhinkVX8CXspKPbUqOJ
         h33ggkBB5bKeJQ2+m3NPHUXmRpsi5PT9WGW+M2hgYP6Sk1jU+zaUPzX++idPSzRajkEu
         n6r/b+N/NH9jiRkkSPdFqEMVXdYPLhuf7Xss65qYaLbd5B6oVUn3DN11kZNxBsTWy0UY
         wkXbEJiprpUSdILkykRJSucNAjrvZrcv1XkYi7NU7B7ZUqcvkMOFZn+u6BXq/Y7sFZ91
         c5Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=joxJVb3kf3s/lRIYFgHkWJMUOTIZsmg/IlWI2d/6zQQ=;
        b=UATulxnAJFd0wA2Opxf4zyFc+Eli1+S//O0okMyUHgzWfvWF5WS72ZklX5nuIZX/oi
         /weUQUp94jcUC/Cv30k+JWBNaH5u0vBxbb0f22cWjWEJUXrA38Mybu07G++kgUaOuEZu
         hSHcZJslQ3H3j0hrIvgVHOqtttS9cFFyzDpYew0t4TtwCGMYbedRoklH7mLrRStuLd5Z
         SI48w5fc8hxhpBn+4hgJowJY4Ri2NSrNu/WIhoPX7jOqIP5mkdhuBbWqZ3mFe+0ZkTp+
         c/cRMok47MBkorfN9leEFByKG2xGO7TodzgyEqxLcQfE+4s+6dbbkq9wyIk7HCxd4mJl
         yt6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.133])
        by gmr-mx.google.com with ESMTPS id q185si496464wme.1.2019.10.02.05.02.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Oct 2019 05:02:34 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.133;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MQ5nE-1iSsrQ1Bbs-00M5vI; Wed, 02 Oct 2019 14:02:32 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: clang-built-linux@googlegroups.com,
	amd-gfx@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Arnd Bergmann <arnd@arndb.de>,
	Harry Wentland <harry.wentland@amd.com>,
	Roman Li <Roman.Li@amd.com>,
	Huang Rui <ray.huang@amd.com>,
	Evan Quan <evan.quan@amd.com>,
	Prike Liang <Prike.Liang@amd.com>
Subject: [PATCH 2/6] drm/amdgpu: hide another #warning
Date: Wed,  2 Oct 2019 14:01:23 +0200
Message-Id: <20191002120136.1777161-3-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191002120136.1777161-1-arnd@arndb.de>
References: <20191002120136.1777161-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:NGWmbgtBQPd36ajMsUKwWTLmLmAiDhXD+Mtxk8YE6bumOY91z5j
 ElTVg9ErXeu19zyaJjHShChe33oD/sZNS+NC2xYgJxGSP+Cv3fiUPnJQyoF55GFnKYLRXfE
 2W6ePyEZZZnJqvhJcnEYxyIsGj4XVU0SqmkvNUws9vUBxgum1tpeEkHDr3eU9mOfpWs5/qK
 c2OuGSj7VRRq4HZWHmlZg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tHfRN4OBGvs=:fW2ZMTKDtL5J46tSOTYwo7
 hI7G13ULkv0U0gsFqYPM7VIrS2vVTeLAAKk8Zocotl1a26VnKSzf9ACjbySMHLqn/YLFLM/an
 jeeK1w0O6FziurC6udZLBxSQ+w0xuShgNAS0dmb85TNlZUEbFIPBKcifVb3SOOLztBaPCGUoS
 NoehdFJs+5F06tEFkYh7RwCws57iJl9IDF36NDU172d0j651NCYKxiRTwuVJwq8v1pMMgNB5F
 GsyPI9invPbWQ3Qabv8Vl541BCJz9kq9SiLAynFCEGBppk4/2heBNKiysrhzUyY1GCFXFTpyR
 jm8R4mSKoHnYymZBfQmM21Ya5YRoWOxjZlL5b29/a/vCjHR60Mbhn6O4fWvYjFyKZM+oeDBHm
 jvmamJcUpz4LrKYPTScimQTnJiMNSF6TegjnGok+Avkuq6CXLEt76q7OcOrdcL3RlIj8N3Z93
 0Mcr4Ca4s6pOIPFYp2MpBCsdAc496jndQymEUZ1kzL+QHE2Vm189XY8O8uy3FO62o9wg6jW8r
 20Z2Rigz+n98Qn70o/GL7dR0t6pn5/+Ah8CUB8BUj7UuRb4B5Y1r204f9PrdCZoJd1bxNtGv1
 T/35lymzxTtG0LHfNqneYlv6dW8w81olD7OcLsd8EpnRNH21ddoiXrNZzEMkRJYeEK2UZvYN6
 v4BAKGf6lXNAe8dPzPVonqnshdSOGTOcS/U6YliDF3sFT3NUiOwme5Svxk92FTSkEJ+jGVWle
 zPH8uxRgIf9rDysK359hEjmf07lC2vhIYljzmzZSr4bZGDx2dka+aX71oDLFS+QXMs3GTAdRB
 gGHLG73VBU/aKAB1EmzCuuwYNDAJcYU/AGCdbyVwGlLKwDQX9iLOiFzUNQOoVeVwDVO2oo8tH
 jD/cUlQlPEXbqVI5PSqg==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.133 is neither permitted nor denied by best guess
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

An earlier patch of mine disabled some #warning statements
that get in the way of build testing, but then another
instance was added around the same time.

Remove that as well.

Fixes: b5203d16aef4 ("drm/amd/amdgpu: hide #warning for missing DC config")
Fixes: e1c14c43395c ("drm/amdgpu: Enable DC on Renoir")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/amd/amdgpu/soc15.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/soc15.c b/drivers/gpu/drm/amd/amdgpu/soc15.c
index f70658a536a9..a337d980b434 100644
--- a/drivers/gpu/drm/amd/amdgpu/soc15.c
+++ b/drivers/gpu/drm/amd/amdgpu/soc15.c
@@ -771,8 +771,6 @@ int soc15_set_ip_blocks(struct amdgpu_device *adev)
 #if defined(CONFIG_DRM_AMD_DC)
                 else if (amdgpu_device_has_dc_support(adev))
                         amdgpu_device_ip_block_add(adev, &dm_ip_block);
-#else
-#       warning "Enable CONFIG_DRM_AMD_DC for display support on SOC15."
 #endif
 		amdgpu_device_ip_block_add(adev, &vcn_v2_0_ip_block);
 		break;
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191002120136.1777161-3-arnd%40arndb.de.
