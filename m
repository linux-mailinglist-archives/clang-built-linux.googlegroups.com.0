Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBL5D2LWAKGQEHCWAGHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B69BC87AF
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 14:01:52 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id r22sf4781364ljg.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 05:01:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570017711; cv=pass;
        d=google.com; s=arc-20160816;
        b=S/e4qkO3cGlktN2rZE2RUDE5q3o0zleYb7Q0gVMw2dK3kvnwOKDJws9OVNAh+PkuXX
         kMpma1oMZSFx843+5po8P+76S19z59ppR31asA9Vd0ieb8dqgDDw003t+7qek+Vh23ym
         WXyOkkbQJknIbZZN0P/X8ZIEb0raggKEk34zQuw0oddC1zdLaE/x2lRwcBO/H/+Bj9N5
         2+i8dLu2v+09Apwoll6eAMAHl/HDy+2zfxhgBDt9Nanue8tP/fwaE2zMb9pjour5tOtn
         hICJkGh37Zeq2wV3uV5YSO4WSlPmnW7HzKHaFFzJ274Ik36UV9sziaNguicwS1+DPquU
         0PZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=XeCYcY55XElxlxeTo0egFRFeL+3WQyayWfTO2C8A0GE=;
        b=wwG9ypd+DwV3VCY90sxVSBF2T9ih/Obm6GYpkg1z5OOQOOqOAbfzMPY2kOnFHXVadZ
         cJcAeiX1RbFipSNITdrPoN+J78ogGLwi0rHJ3aEh/ugbFXYtUcZISkbTTEG72MnHONKF
         XOIVCetGu3Nc1A452BdUHk8YSPSiP4vtZAXYHvt8rdQD3kvRkGxxeTDaWFtqw8rYHqkS
         sWR7wSvyz1vlQ1fYtTWAwcxl4O/lPmNIoYCS92YL5e5oY1ZqJb+HhB5+xKeYeSpc96ms
         QdrK+t8oSyBULUKCvVcH1jXZyIpvRZZUSRb8JuySM1MhCux2hBeEFlYuhARpgw17GQsk
         aM4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XeCYcY55XElxlxeTo0egFRFeL+3WQyayWfTO2C8A0GE=;
        b=Ngh13rlK25q9ase6Rb0g7trX9ks8K8VGW9BeZoxesCpCAmbaWTegm2uRl76mZvcp/f
         GouEsOSDf4IbfOheM3DhP+3q4jNgWMcLDIue+OdAfkVJrcHCV28Y/DoPINxmuWKI46WA
         t7+6lj7Bdmnu4cveDAyRL2Bi3oq66V/K32PV0GfoC2CH17Q1q1rSsbHSCjOJD4Zsaj2D
         kChhxY/viT0K4//fmvloQSxKRk7HSti6MoQyilonvC2w4FfkjxlCHyYPUXgX5N3V/djr
         TkbMx1gzw07EluVr9aB/4+Gz8iiKRtV4/+2ZCUgZhxPGN5ahUHzhqf0ZQY21A/X6EEgZ
         8ngw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XeCYcY55XElxlxeTo0egFRFeL+3WQyayWfTO2C8A0GE=;
        b=jnMGm/h7MsB6+5VrDBnUuMjX+CaoRnHN+P/YfIXeSgj0aeuo4KXdCxhL6UYgYJi/Y+
         13Y+9+wf1tHTCDR4JBomHQ8ItKsTHdimRNOjSBSD/1nMLy5VepPYydvYfWzQFvWduUXD
         u3Gvr4sPho++ujYyptRA1YEUUJAPGzFje7JsZYkNsO0SDyTrJQUItqd56QMbx8xaX3H/
         FsqVDuWlrRYRBVcdK7vcSujGJr83QxyW2KzSik1BeA78YlJKa5ZZFscK+VWO/31ja1kV
         BqH13EjFO9I53diSmPIMv4NMjuYXFsNdB6SPEsK52ZZcT+y++7J7arOSOKhpbHuZoO4N
         7DXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVhTLn928HkpNN9OpUgPhU7AUbpQTWr6LXkuTpzoSw0gee/maXS
	TlzluB59LeV3gMh+8CVmvVE=
X-Google-Smtp-Source: APXvYqyMCJ1pfq6BLje3oWt7w0DhwAPqdTOOQHJug+YtGF0txuT/FLY+/Q+gGBtCC86dmm5OB8dUkQ==
X-Received: by 2002:a2e:86d5:: with SMTP id n21mr2180182ljj.1.1570017711254;
        Wed, 02 Oct 2019 05:01:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:42d1:: with SMTP id n17ls215340lfl.5.gmail; Wed, 02 Oct
 2019 05:01:50 -0700 (PDT)
X-Received: by 2002:ac2:4427:: with SMTP id w7mr2151696lfl.143.1570017710723;
        Wed, 02 Oct 2019 05:01:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570017710; cv=none;
        d=google.com; s=arc-20160816;
        b=EX63xZ1fPT/jUkdKBGAZZyYWrPi/6FSVPNwxS47i1E2StTu/sR2J0uDtykpt3f+oix
         Ke5nQNp1pW0X8cFvgtXYLtAPpvJNmjXiISb5gcwRHbEW4m2SoqFYA3bH5ErAp+x48mzv
         i9kt8OKwdXFXZvggjjTd5FDYmJafleGbKtidT6zrF69+V12Fl9TAWvGPZY8iT+3rA2OB
         5pL5YziLnXVLt85wiMn+IvcbmhxbuqLYeMiqa3b87bvKQd4hIvDVuXsSgaUiDZdAihlz
         Vr9Dzto0QcdK/SXI3WCPy3IU7DEG1VSlyJT0157CVVGYXjGAqZTM5ypPqvMFkJJVTdrZ
         qUWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=xfSCxXZcu3TjsnqYKVVF4vfvqw3bzZuOD7wCgBUpPIM=;
        b=H4MGMvK3ijaML4qI3IQoJaCcwH1Wl5j3hrkE4WEwiu7ttDZvDdxIz6kbkBvFph3CMZ
         KXrzPkIZ/J/0labaWk1HXPfdT0OArcXXnFvZeHOKsgMAJQEXNbFbPwYFnXyxac8HyLZG
         5EJ972M1BQHJAxI7U6Bu0jaUStd52swtYOkX3zA+0J18KJi4s7FdeuESUF1frkX4eiPk
         iHw8n0ifvgt2tJq7st5s7GPMH0quycdHdMPdctq59K8N1h+lpXiHNTFn9+393XvvlVQO
         26VhXtQ8GgsXKZxjlkHPCpO1cOBpPC+32swfmeAr1E6x4hBGy0x5Z/U6ovxJa1s+LOtk
         s77w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.135])
        by gmr-mx.google.com with ESMTPS id d3si1056096lfq.1.2019.10.02.05.01.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Oct 2019 05:01:50 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.135;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Ma1wa-1iaceH2QCq-00W25Y; Wed, 02 Oct 2019 14:01:49 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: clang-built-linux@googlegroups.com,
	amd-gfx@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 0/6] amdgpu build fixes
Date: Wed,  2 Oct 2019 14:01:21 +0200
Message-Id: <20191002120136.1777161-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:LX1FNtvLcwDIdLB+i4qzflq2ZYlCE6KB5K5rZJynUoqPGyIkUPY
 4Mz6djh6520XrlLSv3g57aFtMwJKS+y9hLWUvZH12eQqTQeiw1qnt1FSbmj6CTyowpdYqE0
 WuhmsmWfyydswcAYpuzkFYUaxnI42aBCHE/yPsUVi8yz+hz+FKV6WtoLKY7ceGsBXWg2p0a
 9ac7GLueW+ohA1srPf4fg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AqG46Q0Fqto=:DiGthsIlGZVRMpN4RTeFID
 MzWbk55Uax7YvMfxb5flyijER5Y97yOw9nqFFa9gNvalWz1RX1Smch6ciGu18NmJHcqo0vQsz
 4l/7L3Zvi6eStA4nSOz8V/J4DiViiY8LkeqfzJrxOO/NVKP8Djf4M08+BnRnqk5CJ3v5zd8hX
 QDoE81CpQZCCZuwnDM94TI6hsfxnv4uRj6UmodLtuWn8ouOUWQ3BvNTa42LLs0PFgd3aPvy3R
 ZuGilRa/9oD9CHqYxJZCaVKtFi71PHznXaZTTotzR71MEgICxHUtFhHLRr3Ti2PnseiC1Zf1K
 6sWSVtmTkJAn4LkBU9/Apur7egleGe3RjtTIwURZP6M7wWuZJ/WKoeaigTXtryVTgwsIJD0lF
 Os8EmR+Ea6imlxUnoAli7g16cVWBTGco29yJHZ01a0bR6A4b6YxOx5/EkMZo9RyZFqOEAx6aj
 Ip/4JP2jXmrZl8f2218bFr7WKMXq0THxulwMq7BTOx4IU0aaNX0JPEO4WIIUE/1zpr1W60SnB
 WPcojRp9/gFMVUYeeYbVjhYIlXE/vE2/zUKjzcaszN/nLpQtWiDhWUaH7FRDAJNSnzXjp0fKF
 g9s4vuuiPGigbTT0maHwmZ5KjCe8Zbkk6d2MxiUk9m+2a7vUjdRcYd+x8ELkQE8uWqyHmwpav
 TBjAZiHYmqsMEV6OeAKSBplfwhfU3DRHKUI13FEH10G+ymiGpst8RDBbYVvvpeXS5WrojWn8f
 hNa3V2lvlNUuESik+LKIqAzocxOERxp4NcosOxZpY+79kYf+k8dylDD6cCFSdaMNoQpLUNmFM
 qBFAdKa8Y9BJi7eFpoDMujcFwwBTjBTJwwfnSoSKe0C/+UQ303ozpFPAqr2bgMjmIqx1058AK
 tFDKQ930L4atVk7VQzEA==
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

Here are a couple of build fixes from my backlog in the randconfig
tree. It would be good to get them all into linux-5.4.

     Arnd

Arnd Bergmann (6):
  drm/amdgpu: make pmu support optional, again
  drm/amdgpu: hide another #warning
  drm/amdgpu: display_mode_vba_21: remove uint typedef
  drm/amd/display: fix dcn21 Makefile for clang
  [RESEND] drm/amd/display: hide an unused variable
  [RESEND] drm/amdgpu: work around llvm bug #42576

 drivers/gpu/drm/amd/amdgpu/Makefile                 |  2 +-
 drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c              |  1 +
 drivers/gpu/drm/amd/amdgpu/soc15.c                  |  2 --
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c   |  2 ++
 drivers/gpu/drm/amd/display/dc/dcn21/Makefile       | 12 +++++++++++-
 .../amd/display/dc/dml/dcn21/display_mode_vba_21.c  | 13 +++++--------
 6 files changed, 20 insertions(+), 12 deletions(-)

-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191002120136.1777161-1-arnd%40arndb.de.
