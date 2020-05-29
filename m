Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB26TYX3AKGQEAQD4CRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 9628D1E8843
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:00:43 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id y23sf186316lfy.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 13:00:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590782443; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y2YO1LyluObgPFiboTV4v9KwU/HaiEmxe67TfW6jxKPNl//OADaateMndNFV6LAM0o
         Pgtr9Lc3Pj3DLuBIXcdKvBtYpJfE7jUzgxREDb7pmMoBQPB8a2J3T76OFfXhpukpuin1
         NNzQKoYezqJZyldxJ8GiM+uv5rrqvfngbZuhGCGiy5MN7J86m/5m2zLDm1L3/qiZrFUl
         GviwssvS8CEyMsOREFM6yWjt2AOXdShLARSGi90TKx/Qdk+IMlpgQiKJp5JPCCd0pudE
         19mbQ52CF71Vq7dwTq1iYV9fyqweleDSMM/IEgNyTv/y0IP2zf/PyyXlRECxaqAR0Oe1
         /ETw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=oh7bnm1ZztfFJKP6QMAZP0M7Tkmb4EqRbXBOH3E5lxI=;
        b=D6Oo8RkbrF64rGxRB6n73XGx/9Ki9sTAw/WTszquLiCcXnOhdfPiu+MdXYSMrNbEQR
         wLHO7h+ebPpF/Z/g7WBbI18USsABj2GVjSy52D5cb7AhmsTOrTHgl1upiPxD+Zt+LcRD
         tv5TQ2Rtu13b5eybzpSog0f4x9OdYgQEh+pCbkBocFu1m1G2UrWXtQA7+SxmFbOLY5EX
         39kFqEKGWlHRcfhfu14vh4gbjAUo+34hv37zApfTTFPJN6oXQG+IJajxPqfdnqb2Gxyb
         6JpW4PB34PyWQm5KJkq+mZ06xi8XRC2cYHBgQxxoTGob8VXAPuKe+XdWfoiMq4jagXRt
         i9eA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oh7bnm1ZztfFJKP6QMAZP0M7Tkmb4EqRbXBOH3E5lxI=;
        b=Ecmc9xkl/2pGHUaJvJeNXjv8NGMGnsK8eQbt7VG03dVAqATJeuWJJ9rRashtJpkeVt
         m06Lzxt7klhui3qWyHgpje7o09Sc11hwBJxG+cpW4C8FACc+AZ2pzb9urCfR9uaGwNea
         Udi1M4zNfEiVhExkGQcJrvHddT7MBlUvMe/pvJc1ogsGNrMiyvtR4jFOlnZmzyeL79vW
         qIkNhqXOpFtG5IVRmz+Ib22ZxF8CMpkputLPdN4IrPMCy0MaDCTWKOmjBmX37s7TxSmU
         OitL9w7ImWumYtcKKQ5n97CP10KcnKzjnFdT04tmKW4ourd8WKYGPuEPr++JcB+B0Pgu
         oquA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oh7bnm1ZztfFJKP6QMAZP0M7Tkmb4EqRbXBOH3E5lxI=;
        b=qkVX5zKwQZ8zTP++3H8IfeAQ8OjdOFnSkDNOv2FpNPSXtXaLGnFujYlurTsJvchxlf
         SxX0rG1mWw9J0kvnMdHEaaGsBIiRzv4+v9fK7RcwiXDT12IGKUDJOmXA6WOksFOJKvVp
         0R0QgZoGZBpfxkxDS7+Y5LPh+Q0aO8L+wahJqMCXa8K+tj8uAwRJowT3dpdlC2uSNeMo
         7rC83MKFvh1zcrftTLeSHClumUpnoyp8KuVu1DZDitz4ocwjIBbDeEZXLzWqEjuOPioq
         kXjFnNdn3sWtXdxVzJlmUIkGgdXoelw+26yInO3lfR1Ge0fO8IggOeEmkbJ8Ll1UfNT8
         H3dA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LZrkjJs5hbqfrtWaYBGeusOETcXq2UuLZ43EXuZ5L80cDaGfP
	OR8agGHdGIgA0s2gfVQ9l+A=
X-Google-Smtp-Source: ABdhPJzMJuH4M8CqfM8DjzOcpXUIsgd2AKUY3HvKnOPIZlyYepwuweO2XH+0fqWQRTqDY8xpZXiFAg==
X-Received: by 2002:a05:651c:1211:: with SMTP id i17mr4858630lja.56.1590782443164;
        Fri, 29 May 2020 13:00:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3047:: with SMTP id b7ls629207lfb.1.gmail; Fri, 29
 May 2020 13:00:42 -0700 (PDT)
X-Received: by 2002:a19:d57:: with SMTP id 84mr5348091lfn.112.1590782442639;
        Fri, 29 May 2020 13:00:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590782442; cv=none;
        d=google.com; s=arc-20160816;
        b=GiFfwgFr3tuh2fBfWZgO6Bsznh+INYPNxKZYD5RynU6kA8TypjdSmRWFjKHA8F2V87
         x1gTmwYs7PAp2h0FycOWFAl2Fe9dWPu9Sej3vTOF0D1kTZvjl1XWYhVah0SBIZGvvbpx
         zVW8XVCUGzMKr8bU1YStTg+wRf47j4Pxx5xrA1XcuGDJIafR69wjomiBKUpAWoqyGwt1
         IWQODLsoZoiprbE8G2gmcifN52BjanqRjJk9cjRgWHIZkRS6sU8n7eyDKsmaQ0tVXIZO
         N6Pr9G5M80cYj5lkSA298tHOvkpjeiS7uVqlRwqgq75KsntWTPPqeLSaM90vji7bjgTR
         Z62A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=oxrcHP9RzBBLK6U2JL0i6UFdo0T01q3SM1B4j/C35Hw=;
        b=KdR4/S3fPmfOnTQZGW/1qYrSkuxPE2H5eC5X+I5QFRTdW6wO9gdgdG5xW6fkW/sU1c
         KFLerKAcdaJAAvVQm/GEE1a9E+SXrAA4a+gg++ufCcGZM9EM4vhXO2Jd5q+Rh1PzL7Mk
         kqZPoVcSLYNy3p06cRNweAFFAB5SRHhcjcjLuh30IFL499VYsf4KPlO519nd0YcI8osa
         gKLqdYD/+UMXV0WI1txnk/Y4r1Pgo9GCruMUT2Bwd1vM0kLsq87ETEVwH1GFaWz9AGUn
         fyuzhZboRnjeN8fQaQSc1tPi4poBqMyYGtA0lyV/oatvLuop44tTf+OYwt/sPrzCMMGw
         6oTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.75])
        by gmr-mx.google.com with ESMTPS id b20si665334lji.6.2020.05.29.13.00.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 13:00:42 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.75;
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MirfG-1j2QA92mrE-00ev6U; Fri, 29 May 2020 22:00:41 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 6/9] staging: media: atomisp: fix type mismatch
Date: Fri, 29 May 2020 22:00:28 +0200
Message-Id: <20200529200031.4117841-6-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529200031.4117841-1-arnd@arndb.de>
References: <20200529200031.4117841-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:9ERfkDS39QaOEAH/LNtEg5SZtZjwNIsVwGEjhU9+K4cojGf/K7V
 UoWP2n2dxRTtvmH/nsnxAotxP4hMMygcv035tiVShwjEzCZowyjapFC1LoVOT8iA6CmbgF5
 E7amGwkRPMGWe5ol9GUJdYDg3PV8fvBrPq5BepHLEg/k344kt+HTTEzVppIY3v5/Bj+7QS2
 hL4QtaQY8ORyH/lbNqluA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mnqBXKoOQtc=:6yvsMKsJ87sOKVL5KlMlyJ
 NM2zqmK1kVt+2jS4Gxf2DCxE1uHIwNMzEPOHZg8bfw9A8ElN7XJcj86IsKOGrnQspJe8esBBH
 1cAgJHipTa/c7+4aiDTe+jcZcyyzfOphFY+Be+cvvQkrlH3EhrMQPLiYssdAiYZ2rLiOzmVSY
 91wiIHYMO4N7PU1lYruPhuPnWi1E69HKFl/JjupKRaHbvyi0McmAqGs+VCH1rQLdv6uoqtT2e
 3fI3g2RXvBG1vz+YLkhDXZjbD5bCOiDU2dZ95yZZ33OWp1YgwfiISrjZX7ZA3qjY5VhSH1QU/
 GvDjuy3whxLmZqnGsgM1V1Z1PSoh46MODSvxLo50SUtT11kjKwfvZTdCEyul9aE9PV+CZ+M0U
 XGcGNZPPMU61pb8jJw3j/eJqGO2F88Wm/tE61n7czJwtw/eVRAz1wG6AH/9ZjhkKG9Hwtqbui
 r234T75MM11XUgJ0/FjK9sZFgy6oDSwYy08gn4lkgtuIZcXWJWDxELf10s1UfuBVu0SPVWasL
 wEqNypl/Q9DTjOnFAwBb4mmi1Lj0/KS8Hh/uo0y46kYgmlnzzGI2zBg7wn07o3qs83EvSfIf4
 8D0MJI5TiiNDHvD478uGCidyA8uFKrbav8CuXjwLzyJqluKFi/hB3NfJKNf5RHIjfvghLWLer
 kESbA0UPy1TEyHr1RWh9EzPdrAoBnG2AygVyUdxY5fvLmbfQcfXoJwKV8yUMZD9iD8WgwdIAi
 B5IbAmYdMOcNa9ba/E0Kgq6Muc4Ix/DkOilMsEHsVrtYcK6lh7TY/EuBfsxCI6LLbH7qLWPkx
 hX96Z7pROvLod0O+rTxUDNiG2oaame/ndg4YyQnpysJlLgStDk=
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

The caller passes a variable of a different enum type:

drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c:1707:64: error: implicit conversion from enumeration type 'const enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Werror,-Wenum-conversion]
                                            binary_supports_input_format(xcandidate, req_in_info->format));

An earlier patch tried to address this by changing the type
of the function argument, but as the caller passes two different
arguments, there is still a warning.

Assume that the last patch was correct and change the other caller
as well.

Fixes: 0116b8df1c9e ("media: staging: atomisp: stop duplicating input format types")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c b/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
index 2a23b7c6aeeb..10d698295daf 100644
--- a/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
+++ b/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
@@ -1704,7 +1704,7 @@ ia_css_binary_find(struct ia_css_binary_descr *descr,
 			ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 					    "ia_css_binary_find() [%d] continue: !%d\n",
 					    __LINE__,
-					    binary_supports_input_format(xcandidate, req_in_info->format));
+					    binary_supports_input_format(xcandidate, descr->stream_format));
 			continue;
 		}
 #endif
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200529200031.4117841-6-arnd%40arndb.de.
