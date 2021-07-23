Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB64A5WDQMGQEPYVF7PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 328943D42C7
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Jul 2021 00:19:40 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id v16-20020a0562140510b029032511e85975sf1492065qvw.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Jul 2021 15:19:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627078779; cv=pass;
        d=google.com; s=arc-20160816;
        b=gKZYdMd9NbHk35lQqZf3ryKdjN0DCa3xmQcpvedd39kJL/d4yG0ME0TpJg68LUm8bh
         RkDbw2TSXCU6/1DKALHbnTFNpMgrNf+omiNea2PARWicEpUj0yLXh+FI2WCvqAdzktdv
         uF4iLuI8NvfyHos8oLExbM24LFcrjK3o6LPsdenq14ysOBPCIEKs9Cj05iOc1/Hd3KeH
         DRPO4nU5G+iLMgXIOD1yegsk0ZqgdMnOGGgeVUiEDMkWElqxdyw/bKf4XD3MZcwbc/Tp
         RA3g+i2lapBWGfr4JtXoaQVA5CUn7tT3dBisOIII6HbCfx2X3at/4QYFQSuqaq/3jKhT
         Pczg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=8ORBIAEnCvXe700oNzNYiKKcMbtEXwWGJm+YMqidxT0=;
        b=Enxof5m2dbG+neUaw/lQkQFbWN4K4I1d//RkmKLIL2K/35ohDcKsS9pAgQK2pyRfMK
         Jggs86N53A7QLN7k1ty2Y9OLkNdeAgfvuFMW4QJ2Yp3eYoh+GeEmBPacGpzAZSDIMjBZ
         dpUzfFjSnfCphcsRYTKd2g4lv8xV25gIaELrtCIQwrpngK7uBIQCXO/gaqVe8MmVF1l2
         VDNwh4br2cD+ajyeyy51PV1as2Pls1UmGB03mBJz1fPsH5e/Pd8bA00XaafRTM7XEkUi
         NqtLTb54QQ3VhTzv/6k6Tyk6wC3CGTYAK0C32wgy9ajr2bM2hO94yj+sjfmkuLfYV7pZ
         M9rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="drtY9R/l";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8ORBIAEnCvXe700oNzNYiKKcMbtEXwWGJm+YMqidxT0=;
        b=MzehCvoFiajgl7lFpIvGE6niZcAU7X6Zc7XXwmEazKTHo3GhskZgoucgCOsP5PwHUx
         uUN5nj3t+A07X6ofoA7Y4Kd1AnNdhDhID8FMznJuLRQCA3a/94bNXYjLfWeXFGY8IgXp
         jaPHtHy/3wDhzi3AYgwClc/V2MblHM9gAdXZlUSUB3NJcOUtH6SoOF5S8cLhdlPQAm0i
         ScqtCu3uwe+FxafjTNrqbBCDomDX4/8ax322g6kLwttSMnoOQ+aglPo+OAoM5eFqIP0G
         hIQMKIvjnXnYld1LgCnGZ2BorAXqceLO7Ls6ioj0jVxwrM6Zf3JjMGDA3O56JTyxJWJ2
         zoBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8ORBIAEnCvXe700oNzNYiKKcMbtEXwWGJm+YMqidxT0=;
        b=j4IPkeM4o66myfV1f3nitT3+1m1+wSRtTR+SJW/n26nGUe4lba5uiJCCRLvEgu9B+a
         EmsG0Iwi4KCuFAuM6Fsy+8mMBWCeDMXog8PV0sEztmrY2xQ4U9ur+hFnRtwxROtl21DD
         xGyv5e7oSCOZPqzOcsiSjky3udJMP+1+6DCXuJFUldJXve5iYSZFxkaOgDDj22by1oBq
         QFmSOrAfUOhoPQQUKPRQDTMnUpfScBm09N7HHCZBfiykQuoPwAcW596dwultsLHb7QiU
         JWHhSP47gisF+J/5s08/zEVKsNBnFsaSKhkq1X3udYA63uqhsgkMV2qcntRWv7Q2ctFj
         4nWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531p3kqcTvqfEhVAGBkqqSY+pWlI67H9R0Y6yphCMyoohJD9CwWM
	2nS+GRpL1H8CJICboGjktGc=
X-Google-Smtp-Source: ABdhPJyrknRad/CvdUxI0koVbHLxsABL8POhefWQoRv5M0o19An1K41fXH6wbzhdqwTyCmQtveAsxA==
X-Received: by 2002:a37:6851:: with SMTP id d78mr6671283qkc.268.1627078779103;
        Fri, 23 Jul 2021 15:19:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1944:: with SMTP id q4ls3863255qvk.2.gmail; Fri, 23
 Jul 2021 15:19:38 -0700 (PDT)
X-Received: by 2002:a0c:f6c6:: with SMTP id d6mr6817683qvo.30.1627078778664;
        Fri, 23 Jul 2021 15:19:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627078778; cv=none;
        d=google.com; s=arc-20160816;
        b=q4ZIffeQz09efWPMlIRn6wmLmQZ4ilfJAVpBT85lf1hyiuZanPcTRP5FKBCnpp/RkO
         2QrDlLDA7cGAXQCxbJUfrwAf8eC9rJrTr9MHMAhJLTCA2z+b8GU3Vwzt71wufKH7j+/e
         G5uwg1vYNLVM+YALSZtciaH9a454nN0te/gnPSWvi3NxD7mjaPTJ9WQFbO0QPgbHlJjV
         rUXZUHsS1gszfx5zxjvFcl8soJu7tcdRqnw/Tv/Dj+1aFYBXcja0/QNr/fhOzXfwGnCW
         YePCEj0n5uM7MjNZij/kx72FZms5gW3/2+hgU0O8P/33nQheCFX78E0qlrMXO3Uy3RLl
         dVow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=N/aIOHI86Md8+7aRLP6KogpBCvx6+c9epmyU3U5xlb4=;
        b=Srzp5E0nk/rXeD4i2DCWXePaTYHnHw2LKTk/PM5sNgVzc5B7P4ouWq+/sXdqlnE6RM
         C2L5J+HapcX27/DRCByqNSvIDm9NPvWjeKxmbNzEsq9Mltwm4USVCQDA9ZCIlYK/xP6E
         qQUMYpAPaGOIeQYVvUKYkCs6x/5i9EAoE5FgU1ykfwFeVp08naKTsJEntbTt+orjFvw+
         mkabsSElSN5LUsytZcjqc0dwXVV/qMGrJrj25OtjCv+XFQCSdZZB8HWZSJ0QFj7yV9hV
         A8QIEMklZJinapp37VW9wQfqC5We2TTclBGD6n9xK4GVXfDOtW+JVKHW+HWeo/x2Hv74
         xpaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="drtY9R/l";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id bi21si1170550qkb.3.2021.07.23.15.19.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jul 2021 15:19:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id c11so4642690plg.11
        for <clang-built-linux@googlegroups.com>; Fri, 23 Jul 2021 15:19:38 -0700 (PDT)
X-Received: by 2002:a17:902:ab88:b029:12b:d2ee:c26f with SMTP id f8-20020a170902ab88b029012bd2eec26fmr2627086plr.38.1627078777847;
        Fri, 23 Jul 2021 15:19:37 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h21sm1883548pfh.67.2021.07.23.15.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 15:19:37 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Kees Cook <keescook@chromium.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 0/3] lib/test_stackinit: Add assigned initializers
Date: Fri, 23 Jul 2021 15:19:30 -0700
Message-Id: <20210723221933.3431999-1-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=609; h=from:subject; bh=DHN1AJsInnHOFrkW5ZzfccEROoE6nwehLp5ORzOE8hE=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBg+0BzuLziN9AOlXnW/3Ztg/LucdLyHqlgjAXuQRJN L0r/J2GJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYPtAcwAKCRCJcvTf3G3AJvtTD/ 0TjMl/42NgHK+OxQAvHpf/mSTqJz0WN6sQ/5C6N24iZ3u6ewuA9yLVsU8WsLDz2thue0NhvF+VvLw+ DVQlK3w+8kEP5aG7M+uVsfbgkf+WF5zypJP4FEBC29whN2h1bywM0b3Ewh5WlyrWeWjYslW5zKPgzx sTvNxbA0SWQL7gjTwHTD4Ky6PtSCuk93DJwe8hK1Aucr09fRrdWO/SDI0ya6Y5K93xRqui7HfPtOHu zQaACEyxvnnOWNCbYN4O6qtMrM/7/cCkMx0iRW73tjSRg3/d1P0gseoeiwhOkUCcmVh2hHK2kOPqIq ThA7h8Y5cYnXGjBFxIlb8c1PHgRIq/CdiNuhUlk/Ik6AMY41XfJxHjwM82A7LqytQ0cyfuTxycWzMX 3l/LLIcouRdyKgSpTOFsR6k6kOQQxih7t1FUrAy1ctfPnnslCjJSLR8PvyrSJq7DJaZUvD+2fXdIRa b3lyy7O1MQt4QT2qcBKj3evhHjCJ3IlwSXbejalCdT65SEfUqxs3nR1yopKvPoABb/WpMEyDJX13tx d7eR7PEfogSBPpIijz/ZomF5QL7192g22GGPXjssAJD6WxmB9EYnqnXJD7AD6QP56bMWvBaaIs6tOu 3b0zf+IHKIgNWjXUlHbTqMtfVQ0Qr7iP/XhKHIBs28coregy3k2Hm8+X7UBA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="drtY9R/l";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634
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

Hi,

This is a series of changes to test_stackinit.ko to expand the tests and
provide a stand-alone build, in support of the recent work in GCC for
the -ftrivial-auto-var-init={zero,pattern} option[1].

Thanks,

-Kees

[1] https://gcc.gnu.org/pipermail/gcc-patches/2021-July/575224.html

Kees Cook (3):
  lib/test_stackinit: Fix static initializer test
  lib/test_stackinit: Allow building stand-alone
  lib/test_stackinit: Add assigned initializers

 lib/test_stackinit.c | 252 +++++++++++++++++++++++++++++++------------
 1 file changed, 185 insertions(+), 67 deletions(-)

-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210723221933.3431999-1-keescook%40chromium.org.
