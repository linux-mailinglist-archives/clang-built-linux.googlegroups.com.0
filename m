Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOWK6KEAMGQEEHDPKJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id E57413EFB8D
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:19 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id n9-20020a0568080a0900b002689a4834e4sf970447oij.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267259; cv=pass;
        d=google.com; s=arc-20160816;
        b=ENMp+oEr8CVAC3UhRQBU/IdiEsqsd2dMuK12VjO3ZxEWtWL5P7fW3QPRQWYvQ2ygau
         A32jUViEGcvx+30qhK4WHGHlKnT1jRsOyrG80Tg5rIoNY6JaEfXtQuJ5U7GA9aZriJf2
         fS/HFlCK/nbMwzzKARSyGGVR0YjVolW4fmU7MHwHk/2PbnZ28T6WN4sOrst69wr8Zz3U
         cjHVc4+zfqMz+1UvLV4Pol4onEBkMvaHu+BuJhOU9R3xSZFiw6sfyfeSvvSAA0nOHm/Y
         i9q8z/SovDz8qWsCqkFuZRMc0iPoZWKUf/tKfKUY0TbGN/EoLsjY8GiPWc6QmGchv9IG
         wk7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=pfzPVyH66w9qyNa++wq9cp6t6/YMWYBZe/tuIuM8Fcw=;
        b=t2iZg4Lwc0xqwqvgVo+DaTxZotxLWdhgL6w8wL6zt4GJ4yg7aX0yXIoxlJUJgJzjG3
         ScFW4KUIdqtcAu2j+oopuKwkOoyPxJSSmnAeulygOPWJ+fMpLwVCXWAbdu+kOvDa3yyh
         woCpuJeEJJEXLdY/jRrSTtXPXXTrsiPv+B4/KKhGdVHhpTNd3GQ8buA3GxwzXED0iXnN
         bDhqigJyfNhiObkH5sZuwW24cdKy7R4jqeYxds/OJubneRRumG0tZILvHwjw9v5WjHxS
         RvLZDcDSXnv9wi13zKGpOD1wk9vTXDkMNPVxYj81TpJKoIyG/Kyk58eYSu+9kdDyBQLp
         tPOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JpKHmXU+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pfzPVyH66w9qyNa++wq9cp6t6/YMWYBZe/tuIuM8Fcw=;
        b=hZdtEXrEKWu/K7oPsYYrPycnMGKdme/XFYTO6yqbYTz7wOHuOP9qZ59EWOWpC343cV
         2n6v8UIGm/+sYxeOFlFkFoBJ39o9F6tQ2SNhIMsc9y0qHZzIDst2ny0Hp2NIMqyeKm8H
         3ZCiHBJoDyrwtVW5DMxcVzUG9aQtl2Ae6Jjp4+L2/H+q0rdzy9w9weo0GrpEaPRl6LtU
         ZcvO+pVDoRqRaJSI1DSjmthk2nDJHxblcTe9QcyoH+lSjqVPUJhvg9Vniig6UF/1qoU+
         FbTQM8mzxn9nFckNFtxj8IbyQ9+54Bff2LKhvMBwTw7YkEEDGQG+bSQJTh3PXT0sVht8
         q4XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pfzPVyH66w9qyNa++wq9cp6t6/YMWYBZe/tuIuM8Fcw=;
        b=F74IxSrH1ic8HHvce5YZuz7J2wgBC7v8kH2DvvWtAkvGK+OWstw4cZz8wnPclEyxVq
         aELIILODy0d7L0ECKA+L/rc+I0mRRle4NOiDNQKSk57x8QH6dt7C3yts/VACg6R14Uc3
         ataGVvAodXOK0UrhcrnJljp9cimWbrM8cIuLWiO380OVeASe4sfHx2G/9XQuuL2Y2TQy
         unApbScq0x/dG+JgjnoJ6BaOqjiLxYf9s1h84i4NDbPsX8Mn8FejRTOfniMeZJIvo+/s
         XohhbF1UV9BnvMd6/deUdlUf0FnTdYohBik2QolgV3IazFeF+c1s7UTP3SpQ6wvTY4ct
         5CPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531K+D32Rfapa/8i+Mboy9DT9Pj5iUGFXhQf5EnFWzwbwMqtqCcb
	PRz5MVHk1GodG1pfhZlO8Z0=
X-Google-Smtp-Source: ABdhPJw1u07/fLGIDdJXU0UcCiX/vzQS9Na1CmU8/ByBAOegnzBPpDG03jCciaGUDy5miw0AebPOIg==
X-Received: by 2002:a05:6808:1985:: with SMTP id bj5mr5777168oib.46.1629267258948;
        Tue, 17 Aug 2021 23:14:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:b84:: with SMTP id a4ls294832otv.9.gmail; Tue, 17
 Aug 2021 23:14:18 -0700 (PDT)
X-Received: by 2002:a05:6830:2808:: with SMTP id w8mr3392790otu.244.1629267258454;
        Tue, 17 Aug 2021 23:14:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267258; cv=none;
        d=google.com; s=arc-20160816;
        b=mMSYtu4nygrvcOZ80OZjLCa9m7dO9G7zvPzMRvegjkvsQh77T/oLIyrfnJHfYDgSi8
         K16fYCI5MN4333hBrg7u5jxBiFajUvVtdcRRSkAizvSIW9b2cSBG33xUt6MsvRqnPGZ5
         BlvrZc0NTpxGA27G8xhWb1roQf6Ftvk05dQywSHJFN/vQF+Cg6AtorhVWUYQI+gCrgNN
         Dfn+OPOtPAWVN0jfKxFeH5926dAsmzmyFpKfR/BE4AJkEz0Zpx052cPHiPBGD7vc4xX5
         MERMj/DWBJt1UDZ73iguAXkRbHCodOB4sWsb6PPjDL3haiWZUNAIMDv2TfzxK48cym8l
         gH/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=axRxl6XNvdHdnVEeMiGlhBK2fx1eWMP1p1J87ZwKUtU=;
        b=s4/NkiPEZduTuWaRQA2nrD/9DodGXho8moGJxkx+fE+NGcCFFtVzXTAVWnwkdbYqIB
         CRsU/POTAUebNwoR0vNkEFeiGgT7Ly8EokdgR4YoKjTUJgY6Vmd6NIQp36E13SzIKELD
         d7j18Zyr2cYuKIi0VwolVt+NVqfZN/Df/OumaeQDgnfGsVAnQNOQEltlguRnWEw65ZPu
         LYf8Rv7ZEgvs9+yZ1g9Mt4qfGmGft5oVlINNjsus7uv9nl7zixpj5+J/9kYRDQgtPP8c
         elIn0GB9p9Vs5VXQGnNzt6O0+NZiZqHDQEOeWU/JxBq4zAO5+s5v6hrAsUdoXLLWYjxO
         zGoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JpKHmXU+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id b9si401133ooq.1.2021.08.17.23.14.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Received: by mail-pf1-x42c.google.com with SMTP id w68so1076403pfd.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:18 -0700 (PDT)
X-Received: by 2002:a65:4581:: with SMTP id o1mr7206734pgq.349.1629267257822;
        Tue, 17 Aug 2021 23:14:17 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k9sm4320391pfu.109.2021.08.17.23.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:15 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"Pan, Xinhui" <Xinhui.Pan@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Hawking Zhang <Hawking.Zhang@amd.com>,
	Feifei Xu <Feifei.Xu@amd.com>,
	Lijo Lazar <lijo.lazar@amd.com>,
	Likun Gao <Likun.Gao@amd.com>,
	Jiawei Gu <Jiawei.Gu@amd.com>,
	Evan Quan <evan.quan@amd.com>,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	Alex Deucher <alexander.deucher@amd.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 18/63] drm/amd/pm: Use struct_group() for memcpy() region
Date: Tue, 17 Aug 2021 23:04:48 -0700
Message-Id: <20210818060533.3569517-19-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=9874; h=from:subject; bh=xkq/GgVQos4phY69YvlHwazwtJ7+oBoAW/iYv7WVAic=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMhiWVzzmhBur+1cBk2O2ZXVSjeLlgxz10CkbR5 AKO/11yJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjIQAKCRCJcvTf3G3AJht6EA CaYxNgC78NjMU3NXMgzorx6fRtH4BJwYIGJ74DB/m7swwaAHceyK1O/6lCQ7H812Aiiq4XK3QDmoUk qASs/4198qLTAEHhq7Q18FiMX2P3A7Q0631t7ABRcNNf+8sZXncmdOZPGYXpPAODBOCabM/f3/oDCx juRFOQ2unI6EojppuO7CJSyN6BitOl0EfAAVwzH5qdN0dbqjvmJWEk6DyGUh+uyHqAcClSWCqlrEC2 2OsaBqNYzf5j6vWeBx02EpyOWFqkO/XyPXBqw7kL7GIS2sxESQTqmhPrfGjlNI8aLc5oqP4Nz/mHlj izA+lyAMf9/CaxogHr7ad/WNivgAySk9xHsccW792p6SsKVbNUtuWM4hk2GkKJimH31lP9pcLQL2Ch j7xVH/dOlAV9Ftvi7+KvJI+v+DmQ/gRxe5YIRztukLnhmjPWcMqKsuKK44UwR65YeFh33G6UZWzhZj SwUBV/6zpAPgCZDoeJ5hTeN2HohgNJ0fijbEnaK+ifaUEslAh2R7Yxz9WjnXacxem2c2/Z6wGyyAdq 8GbFcwR+u8iKZLAOMc13DJT6zOgy8+ZXHxMay8F6GzxmI1F43Z0WF2KzMZDLs5tgRr/UrucI9TgIhX cizSF2eNXvheQca86HlnqqfZiLL7gsttRC6U5oD07PukPv3YeEniSDJPST0g==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=JpKHmXU+;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Use struct_group() in structs:
	struct atom_smc_dpm_info_v4_5
	struct atom_smc_dpm_info_v4_6
	struct atom_smc_dpm_info_v4_7
	struct atom_smc_dpm_info_v4_10
	PPTable_t
so the grouped members can be referenced together. This will allow
memcpy() and sizeof() to more easily reason about sizes, improve
readability, and avoid future warnings about writing beyond the end of
the first member.

"pahole" shows no size nor member offset changes to any structs.
"objdump -d" shows no object code changes.

Cc: "Christian K=C3=B6nig" <christian.koenig@amd.com>
Cc: "Pan, Xinhui" <Xinhui.Pan@amd.com>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Hawking Zhang <Hawking.Zhang@amd.com>
Cc: Feifei Xu <Feifei.Xu@amd.com>
Cc: Lijo Lazar <lijo.lazar@amd.com>
Cc: Likun Gao <Likun.Gao@amd.com>
Cc: Jiawei Gu <Jiawei.Gu@amd.com>
Cc: Evan Quan <evan.quan@amd.com>
Cc: amd-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Alex Deucher <alexander.deucher@amd.com>
Link: https://lore.kernel.org/lkml/CADnq5_Npb8uYvd+R4UHgf-w8-cQj3JoODjviJR_=
Y9w9wqJ71mQ@mail.gmail.com
---
 drivers/gpu/drm/amd/include/atomfirmware.h           |  9 ++++++++-
 .../gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h    |  3 ++-
 drivers/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h  |  3 ++-
 .../gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h   |  3 ++-
 drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c    |  6 +++---
 drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c      | 12 ++++++++----
 drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c   |  6 +++---
 7 files changed, 28 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/amd/include/atomfirmware.h b/drivers/gpu/drm/a=
md/include/atomfirmware.h
index 44955458fe38..7bf3edf15410 100644
--- a/drivers/gpu/drm/amd/include/atomfirmware.h
+++ b/drivers/gpu/drm/amd/include/atomfirmware.h
@@ -2081,6 +2081,7 @@ struct atom_smc_dpm_info_v4_5
 {
   struct   atom_common_table_header  table_header;
     // SECTION: BOARD PARAMETERS
+  struct_group(dpm_info,
     // I2C Control
   struct smudpm_i2c_controller_config_v2  I2cControllers[8];
=20
@@ -2159,7 +2160,7 @@ struct atom_smc_dpm_info_v4_5
   uint32_t MvddRatio; // This is used for MVDD Vid workaround. It has 16 f=
ractional bits (Q16.16)
  =20
   uint32_t     BoardReserved[9];
-
+  );
 };
=20
 struct atom_smc_dpm_info_v4_6
@@ -2168,6 +2169,7 @@ struct atom_smc_dpm_info_v4_6
   // section: board parameters
   uint32_t     i2c_padding[3];   // old i2c control are moved to new area
=20
+  struct_group(dpm_info,
   uint16_t     maxvoltagestepgfx; // in mv(q2) max voltage step that smu w=
ill request. multiple steps are taken if voltage change exceeds this value.
   uint16_t     maxvoltagestepsoc; // in mv(q2) max voltage step that smu w=
ill request. multiple steps are taken if voltage change exceeds this value.
=20
@@ -2246,12 +2248,14 @@ struct atom_smc_dpm_info_v4_6
=20
   // reserved
   uint32_t   boardreserved[10];
+  );
 };
=20
 struct atom_smc_dpm_info_v4_7
 {
   struct   atom_common_table_header  table_header;
     // SECTION: BOARD PARAMETERS
+  struct_group(dpm_info,
     // I2C Control
   struct smudpm_i2c_controller_config_v2  I2cControllers[8];
=20
@@ -2348,6 +2352,7 @@ struct atom_smc_dpm_info_v4_7
   uint8_t      Padding8_Psi2;
=20
   uint32_t     BoardReserved[5];
+  );
 };
=20
 struct smudpm_i2c_controller_config_v3
@@ -2478,6 +2483,7 @@ struct atom_smc_dpm_info_v4_10
   struct   atom_common_table_header  table_header;
=20
   // SECTION: BOARD PARAMETERS
+  struct_group(dpm_info,
   // Telemetry Settings
   uint16_t GfxMaxCurrent; // in Amps
   uint8_t   GfxOffset;     // in Amps
@@ -2524,6 +2530,7 @@ struct atom_smc_dpm_info_v4_10
   uint16_t spare5;
=20
   uint32_t reserved[16];
+  );
 };
=20
 /*=20
diff --git a/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h b/driver=
s/gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h
index 43d43d6addc0..8093a98800c3 100644
--- a/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h
+++ b/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h
@@ -643,6 +643,7 @@ typedef struct {
   // SECTION: BOARD PARAMETERS
=20
   // SVI2 Board Parameters
+  struct_group(v4_6,
   uint16_t     MaxVoltageStepGfx; // In mV(Q2) Max voltage step that SMU w=
ill request. Multiple steps are taken if voltage change exceeds this value.
   uint16_t     MaxVoltageStepSoc; // In mV(Q2) Max voltage step that SMU w=
ill request. Multiple steps are taken if voltage change exceeds this value.
=20
@@ -728,10 +729,10 @@ typedef struct {
   uint32_t     BoardVoltageCoeffB;    // decode by /1000
=20
   uint32_t     BoardReserved[7];
+  );
=20
   // Padding for MMHUB - do not modify this
   uint32_t     MmHubPadding[8]; // SMU internal use
-
 } PPTable_t;
=20
 typedef struct {
diff --git a/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h b/drivers/=
gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h
index 04752ade1016..0b4e6e907e95 100644
--- a/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h
+++ b/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h
@@ -725,6 +725,7 @@ typedef struct {
   uint32_t     Reserved[8];
=20
   // SECTION: BOARD PARAMETERS
+  struct_group(v4,
   // I2C Control
   I2cControllerConfig_t  I2cControllers[NUM_I2C_CONTROLLERS];    =20
=20
@@ -809,10 +810,10 @@ typedef struct {
   uint8_t      Padding8_Loadline;
=20
   uint32_t     BoardReserved[8];
+  );
=20
   // Padding for MMHUB - do not modify this
   uint32_t     MmHubPadding[8]; // SMU internal use
-
 } PPTable_t;
=20
 typedef struct {
diff --git a/drivers/gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h b/drive=
rs/gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h
index a017983ff1fa..5056d3728da8 100644
--- a/drivers/gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h
+++ b/drivers/gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h
@@ -390,6 +390,7 @@ typedef struct {
   uint32_t spare3[14];
=20
   // SECTION: BOARD PARAMETERS
+  struct_group(v4_10,
   // Telemetry Settings
   uint16_t GfxMaxCurrent; // in Amps
   int8_t   GfxOffset;     // in Amps
@@ -444,7 +445,7 @@ typedef struct {
=20
   //reserved
   uint32_t reserved[14];
-
+  );
 } PPTable_t;
=20
 typedef struct {
diff --git a/drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c b/drivers/gp=
u/drm/amd/pm/swsmu/smu11/arcturus_ppt.c
index 8ab58781ae13..341adf209240 100644
--- a/drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c
+++ b/drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c
@@ -463,11 +463,11 @@ static int arcturus_append_powerplay_table(struct smu=
_context *smu)
 			smc_dpm_table->table_header.format_revision,
 			smc_dpm_table->table_header.content_revision);
=20
+	BUILD_BUG_ON(sizeof(smc_pptable->v4_6) !=3D sizeof(smc_dpm_table->dpm_inf=
o));
 	if ((smc_dpm_table->table_header.format_revision =3D=3D 4) &&
 	    (smc_dpm_table->table_header.content_revision =3D=3D 6))
-		memcpy(&smc_pptable->MaxVoltageStepGfx,
-		       &smc_dpm_table->maxvoltagestepgfx,
-		       sizeof(*smc_dpm_table) - offsetof(struct atom_smc_dpm_info_v4_6, =
maxvoltagestepgfx));
+		memcpy(&smc_pptable->v4_6, &smc_dpm_table->dpm_info,
+		       sizeof(smc_dpm_table->dpm_info));
=20
 	return 0;
 }
diff --git a/drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c b/drivers/gpu/=
drm/amd/pm/swsmu/smu11/navi10_ppt.c
index 2e5d3669652b..e8b6e25a7815 100644
--- a/drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c
+++ b/drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c
@@ -431,16 +431,20 @@ static int navi10_append_powerplay_table(struct smu_c=
ontext *smu)
=20
 	switch (smc_dpm_table->table_header.content_revision) {
 	case 5: /* nv10 and nv14 */
-		memcpy(smc_pptable->I2cControllers, smc_dpm_table->I2cControllers,
-			sizeof(*smc_dpm_table) - sizeof(smc_dpm_table->table_header));
+		BUILD_BUG_ON(sizeof(smc_pptable->v4) !=3D
+			     sizeof(smc_dpm_table->dpm_info));
+		memcpy(&smc_pptable->v4, &smc_dpm_table->dpm_info,
+		       sizeof(smc_dpm_table->dpm_info));
 		break;
 	case 7: /* nv12 */
 		ret =3D amdgpu_atombios_get_data_table(adev, index, NULL, NULL, NULL,
 					      (uint8_t **)&smc_dpm_table_v4_7);
 		if (ret)
 			return ret;
-		memcpy(smc_pptable->I2cControllers, smc_dpm_table_v4_7->I2cControllers,
-			sizeof(*smc_dpm_table_v4_7) - sizeof(smc_dpm_table_v4_7->table_header))=
;
+		BUILD_BUG_ON(sizeof(smc_pptable->v4) !=3D
+			     sizeof(smc_dpm_table_v4_7->dpm_info));
+		memcpy(&smc_pptable->v4, &smc_dpm_table_v4_7->dpm_info,
+		       sizeof(smc_dpm_table_v4_7->dpm_info));
 		break;
 	default:
 		dev_err(smu->adev->dev, "smc_dpm_info with unsupported content revision =
%d!\n",
diff --git a/drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c b/drivers/g=
pu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c
index c8eefacfdd37..492ba37bc514 100644
--- a/drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c
+++ b/drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c
@@ -407,11 +407,11 @@ static int aldebaran_append_powerplay_table(struct sm=
u_context *smu)
 			smc_dpm_table->table_header.format_revision,
 			smc_dpm_table->table_header.content_revision);
=20
+	BUILD_BUG_ON(sizeof(smc_pptable->v4_10) !=3D sizeof(smc_dpm_table->dpm_in=
fo));
 	if ((smc_dpm_table->table_header.format_revision =3D=3D 4) &&
 	    (smc_dpm_table->table_header.content_revision =3D=3D 10))
-		memcpy(&smc_pptable->GfxMaxCurrent,
-		       &smc_dpm_table->GfxMaxCurrent,
-		       sizeof(*smc_dpm_table) - offsetof(struct atom_smc_dpm_info_v4_10,=
 GfxMaxCurrent));
+		memcpy(&smc_pptable->v4_10, &smc_dpm_table->dpm_info,
+		       sizeof(smc_dpm_table->dpm_info));
 	return 0;
 }
=20
--=20
2.30.2

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210818060533.3569517-19-keescook%40chromium.org.
