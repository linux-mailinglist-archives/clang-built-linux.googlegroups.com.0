Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBIESRLZQKGQEN5ZDKUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F3E17C472
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 18:32:18 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id v2sf1597606qvi.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 09:32:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583515937; cv=pass;
        d=google.com; s=arc-20160816;
        b=fVsH148e8LLFFuTh6oacNSYtoPHeLY4kyB3EINRll/iygUqfPAX7GH7L/6/GqDr+l9
         dHH8OLZ9e84Ai/CHjMikDHqRc3QUZs6GcF2OJc2yTq1AdusKlIIusYe6vdEiJJ7g+3nj
         l0Np0kGpoSyxS3RhM7fCaUZqjur+iSugCjh8eqVPk4pBGz7RsStn3UI2a0Z/zX8HxJWi
         lgtCc2zJ/zn4XGCwLLYudccfdTl+y42suOpJdPOAPPrcVzPRtCuBcifnaakPlgWD0npP
         R5cYxqFxQrBMAMjI3DlI+zGfCvqgMZ7bImSiDcgyQMH6LDS1+ZFGOsUHyQQiD8b1ZtDB
         qH8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=noV6Wxyi87uw24X+MARvXY+7iLl5ozCVpGIPVUW0grQ=;
        b=uZDOT5SW1IwRiBflNYWtbXus3jZ6m9dFPP9LwdSPjSpPS9yTlMhoL8l1/jqD5PsDUr
         4gpPbm3OaExEfqKwfKJkv0xwG6mWJpjB5sIbVehHA7VKGrQ/kznYsYD2rYZNJrJhl7nz
         t5IUSNUS9RzWumQjr/9/XH00+v1l/pAJMj5ix857XfeRROs61PBJs4Dxe1Rf8PWN0itB
         L9yc7vCCRtGa4m2zFKTC/8eP1njiRFzWy30vBFETvWO6xW/ucyauCLFr3SAoOCts0V8T
         9eqD4zgsqEzNLJxJxwvtw1PNTxeDmZ2KOMRx/hxrU4ugreDzR+aB93dNQOOGfjL9nUJ6
         isxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eJ5c87zi;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=noV6Wxyi87uw24X+MARvXY+7iLl5ozCVpGIPVUW0grQ=;
        b=SgNI6+vtmI2iX81qjMNbs4jJB1xE2WMyb/CjT3pkyO6Ra1+Xoij7N7nCwHfsXv8nEs
         +aosxh/YDKEdTyQmkdFPe+rEISuzZ53q2KzBgpAFLeLohhK4LXeMrj5wY8r5QBzBWc/Y
         Ox/Gkb6RHgNumgqVENHzFCPAvMhPndDuF1+LzTkxsexHoByKlQeiIOwOT06CrFsmU6R2
         kLoZF8KDH1Pm3cVTRQ3BlCPLR4jX9lvwtHP/EDM2dCZx0wqdIZattoK9WTzdqc2yKOj4
         ry5ujdl/Z5DgwEmQdTAZinkjwJDeFPr7gBsp0BYEJutstbvUAEZKqVIwlQoISc0+PhO7
         vNOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=noV6Wxyi87uw24X+MARvXY+7iLl5ozCVpGIPVUW0grQ=;
        b=f3wvy3V6FBcvgTPhIuMXS+78v4jTRg42akqIR6FrwtlFjfcZvIxJ5Lh8uLh2BCO+hO
         duLZ9hy2m0M4sMH4//Y4vvVQEHYvQCI9ztWoh6/l0oxlAy/SklwplCqBmUCQmEttx30D
         WDrcq04ZEYqfW9HGr7QhbdbLppDlUOFCSZ/s29dBY0OI3YPDt/+PwN5xVS8aWq0NJl0r
         z7Cuxi5VrGQs/ZW/W9aUwkSPLIfiG4s1GCbS8aOTw6T3hcYi0GMOYNIcBS5baucJ6kXB
         wjhNvgMduUaA6TcvyBMnqjPMjRb/0RPzmi6Ra43/0QuRxfZkKfsmkLnuTS2iltBsTJEe
         7tLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1JOCapAd34VtGPEUtjwaArRbM5gyHNeGY6tQcatYw1xWqsUPIw
	XuWMDCtL9swH8hWKC3TOukA=
X-Google-Smtp-Source: ADFU+vuRDMbjX29Wv7VbNVpNt7FaVqjjOsx9ktT1HjyJ+0YV2d/yj+NKMH8N1zJOBwRPRyXWrqup7w==
X-Received: by 2002:a37:618e:: with SMTP id v136mr3905508qkb.481.1583515936935;
        Fri, 06 Mar 2020 09:32:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4e45:: with SMTP id eb5ls676124qvb.11.gmail; Fri, 06 Mar
 2020 09:32:16 -0800 (PST)
X-Received: by 2002:ad4:588e:: with SMTP id dz14mr1489073qvb.103.1583515936549;
        Fri, 06 Mar 2020 09:32:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583515936; cv=none;
        d=google.com; s=arc-20160816;
        b=Q0PJvH6hTGSr9Ag5JzLpQqgsNFuNBsnG7Y68v9kOBHdZjgwhrm1yhb1aHwaGyBFrOs
         rxVVG+ygfJqO3L43V7gIi4BvXc2465C9FxDYFVoM80ecBm+i4nF+TiZJGhN0BJt4cKpO
         j7fIh5aKE5lSjt5RvPoRE1AXgk6Ero7A8vnTmHcxctyTcmYA9uZlnE1a289hufQu5z6R
         QzYgUBS0UGxKYL9O1UTpQ+uP2MmaRAvFLj0wkRby8JuMRNbrv92SLjt/aumPng2DhjVk
         4Xu+0rlZJlWtKcUNudLmwZMGXnxbOVFueGHHzvgwTsgZ/c6ESLqEASse8K+l9fMVdgfo
         zXOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=G1RDgxBiyV6Kk2G6RLMWzGPree6/YVdm0hvb7UeIEqk=;
        b=EnoMxDEVX61JiOzqy618WglDNvewAP/85MEWpTCR+1YUqSAe5lQ9rjqFvlucmyLjzW
         MGvgIRNTqYoUyT9HJaTorvcJFCmyP5CJBH8GYdWEI/nRWHrSTZOPEWHfvcJXFsJQ0FIE
         KAUhHvW8cUbOe+24TKUWC4Gwp+TJKvuk/THsDSxA/UZg4KVZYvejO3PPjMGkafw9DoV/
         cuUU50NcmJArvWBWVIKS9IINWh+//MpDLNN0hJR0YkilfCEf/wXVS0JBqe474QhvEa0I
         sDIr98p5A5MttAnnDh5swuMvNWyJywXlgoq9gbEBS/3maKmQgwxxoAqB8giPUsWMrhaX
         bIwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eJ5c87zi;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id n138si67740qkn.5.2020.03.06.09.32.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2020 09:32:16 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id b8so1134880plx.4
        for <clang-built-linux@googlegroups.com>; Fri, 06 Mar 2020 09:32:16 -0800 (PST)
X-Received: by 2002:a17:902:342:: with SMTP id 60mr3878637pld.206.1583515935302;
        Fri, 06 Mar 2020 09:32:15 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x190sm37154310pfb.96.2020.03.06.09.32.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2020 09:32:14 -0800 (PST)
Date: Fri, 6 Mar 2020 09:32:13 -0800
From: Kees Cook <keescook@chromium.org>
To: Daniel Vetter <daniel@ffwll.ch>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] drm/edid: Distribute switch variables for initialization
Message-ID: <202003060930.DDCCB6659@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=eJ5c87zi;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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

Variables declared in a switch statement before any case statements
cannot be automatically initialized with compiler instrumentation (as
they are not part of any execution flow). With GCC's proposed automatic
stack variable initialization feature, this triggers a warning (and they
don't get initialized). Clang's automatic stack variable initialization
(via CONFIG_INIT_STACK_ALL=3Dy) doesn't throw a warning, but it also
doesn't initialize such variables[1]. Note that these warnings (or silent
skipping) happen before the dead-store elimination optimization phase,
so even when the automatic initializations are later elided in favor of
direct initializations, the warnings remain.

To avoid these problems, lift such variables up into the next code
block.

drivers/gpu/drm/drm_edid.c: In function =E2=80=98drm_edid_to_eld=E2=80=99:
drivers/gpu/drm/drm_edid.c:4395:9: warning: statement will never be
executed [-Wswitch-unreachable]
 4395 |     int sad_count;
      |         ^~~~~~~~~

[1] https://bugs.llvm.org/show_bug.cgi?id=3D44916

Signed-off-by: Kees Cook <keescook@chromium.org>
---
v2: move into function block instead being switch-local (Ville Syrj=C3=A4l=
=C3=A4)
---
 drivers/gpu/drm/drm_edid.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 805fb004c8eb..46cee78bc175 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -4381,6 +4381,7 @@ static void drm_edid_to_eld(struct drm_connector *con=
nector, struct edid *edid)
=20
 	if (cea_revision(cea) >=3D 3) {
 		int i, start, end;
+		int sad_count;
=20
 		if (cea_db_offsets(cea, &start, &end)) {
 			start =3D 0;
@@ -4392,8 +4393,6 @@ static void drm_edid_to_eld(struct drm_connector *con=
nector, struct edid *edid)
 			dbl =3D cea_db_payload_len(db);
=20
 			switch (cea_db_tag(db)) {
-				int sad_count;
-
 			case AUDIO_BLOCK:
 				/* Audio Data Block, contains SADs */
 				sad_count =3D min(dbl / 3, 15 - total_sad_count);
--=20
2.20.1


--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202003060930.DDCCB6659%40keescook.
