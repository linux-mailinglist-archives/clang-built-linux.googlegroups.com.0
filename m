Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBGG22T5QKGQEXBRM6OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F4127F70D
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 03:12:57 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id n16sf1497108edw.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 18:12:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601514776; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lcb+G5pIQP0N7btwmxOKGoqV2W2wmjmvmhujMfx3JyUH+/Rhw7FGHQDdfQMMxFYtVB
         tFqtCyUftkRmxDxyFi+iK4Qd/28l0fDyKrKgL0ByDzCxLZdGsFwAT6bocMJNFTvWibhh
         UjtdntCCLd104641hQfukgZVLksB2BEXptboksjqiKThHDTgIKSlxY+lBkbjOWi8UY5e
         GHyFYLMUImaPiyJI7JpYyC78GYbmY7nqMbmL8FcaG4lgQTvETzAb0QAu19x7x1XeOnr2
         XSn2jvq34NF6xpM5vngtI4kIxh4H8VNcLmFZ0tnQfTZFXD4YOfRjrM/F5JAKBM4D7bFU
         +iMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=r1vecRUI3iIXDhxpf9KLOtKSN8ahdntvCeH8HF0I86U=;
        b=ViS0AQ8gyfxFgGYlPd7YUehRI2jLqSz9cwvz4PWEUbKaR9dFweX2YeixF9RF9QTbxk
         btH3MORIY1eKL0TW4cEpU/q6ak2Z0sIWpvbOWouqgA3PEj8hX6mFBgM0/MdirYw0HPBT
         i0TVTZFAG7x+1CQwxQJQUZvORL1u4L7tXrpSoe9q8GCMRK9TwowzAPZVGV1rV4eXkumQ
         00FV/rel/68n86pxpVqCHUh3mAOpU150UXidesIpvbbbEiUeNvcgGq1U6fO4GzusO3PQ
         Uq0spEOkwGC4wtjzHMOvzAZsas0qMI8U6V/z8R0al7hGKRBg8A9mACYq20MKhIZda/Mc
         UYGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r1vecRUI3iIXDhxpf9KLOtKSN8ahdntvCeH8HF0I86U=;
        b=SpjIROIlgf1G/uufSMBH4A/j9PK7J4VoVvli2M7M9n/25sZ0qW6Ed9lfo4QlKS2Otm
         7OC3X1W16/lqwpGHqDDG/eVc4HoitcUnJhOjjmcNTx3hsrG6BUvC17Pc4QRVFkxK06KP
         wwRrv3/HwwlelU1rtW34ll9AwHsiAiQJoReKUbHiCCnU3luLs5ZIB7fSnnyr6uY8WfKe
         VtYXAqwgMHCujTS8h+fC0PTTwhDA7B7B2F5a+Hxv2soDDOGEc+dflmZpSKPdiiMRd5hQ
         kpUBTqVf0wcuORZ3UbqlilmfIHghhV2ylxxHUi9j8IDWl0gGzwPe2eTBnuSIMzyji2+K
         M4hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r1vecRUI3iIXDhxpf9KLOtKSN8ahdntvCeH8HF0I86U=;
        b=n/KL4u31Rl0yrTuYeoMl/lDDl8w1MntOIUIbRaCMkoubPyAiETfb0USA0DAhCAthx9
         /uyKP+F6hhoItNfO2WxzFJ2u3ptoEngt44dczsm1QA8aBP68HXtzemcYMYMAtTc5wt8L
         BJvpt6LtWMqogEIQkFsxBRgV5kFFlhveXZWVFCqR7rwEElQlvZ44LYRfxY+z6QEgyaQn
         uibhLML9fsB4wjeGo9NrGLpP49YH0MAQYKXNXmtxv0leImHOydR5fms3VpKF0Qmx9igr
         ZGP+ax0Tru2R5UxRqqmZA5KytO/HxOJDZhZxiI22VgDI2fZVwnEg2O/vqiUJkQ5rZXXj
         TBxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bQeNB7AF8B6THdNX7rGWFof20H6pPgslpPI3PVEU/Z+eQSGZv
	592RsVlRLdQrQlFfo6gWlnc=
X-Google-Smtp-Source: ABdhPJz/tHjBdG6ehbDDvcdoDS7xlEY+VyvXnbcTSP6IX2Iwh1HMZUmU7jiifCs3g2bzXtERm0LNJg==
X-Received: by 2002:a17:906:5812:: with SMTP id m18mr5868755ejq.204.1601514776660;
        Wed, 30 Sep 2020 18:12:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d40e:: with SMTP id z14ls3984166edq.2.gmail; Wed, 30 Sep
 2020 18:12:55 -0700 (PDT)
X-Received: by 2002:a50:cf8a:: with SMTP id h10mr5834140edk.43.1601514775627;
        Wed, 30 Sep 2020 18:12:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601514775; cv=none;
        d=google.com; s=arc-20160816;
        b=X9hXjsq59+zq5Klt5nlpyQBvh5wH3xc+ipdu0rvDoOjOzNsq8d6Dsgp0XibU2KsztF
         NP3zb8oqch6AK1NqabbQow+d2Fcy40fZlP/JhVFdxPiBLwOp8ydKLzttwJ4oK+Z8zE5T
         /8a1v2BZkktoc+EHWPoX0ksMdkEEH00GYo34xTKVrYFhtoZMttJ0jQAPg980Js7fRoWb
         Cyz6uXFGbbIos7l3N82EO8AyEKryLYIb9+yLa8QDn0xYi5AgOl5RbV400i9ZIRKDlMDO
         Uc5U+MbABrQDq6TEpky7q3hbkZpAFXFiXbhaMcBcQFvZabT6k69+XiqPE+QrKN4L7fsU
         7low==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=wBx1UQEf5TTrZyCx5t221wspmpw4dHKsmVWIEXsSUF0=;
        b=V4T7PB5N1nzyWBM3P4693H00Iw9eg2sSlsCPjoYZmZXWjHowfzz9S2XNetF6qdzoJT
         xlv8CKnZxR5unhxU5Ce5wfJU0CDC1hrguzFrDIbLfUkajHTtCwlxLURT7oo99zbaoqHL
         5isdcxv21xGQ8jXCT/eu8gKRb8atD+4ZmrcytOkF4IUIG2sZnCRIoDc0HZTeVtWzagkz
         XZfGwj7if4qcnepkxmTGh6BMr863jmIXbjp3HvHBmx7kv0k/veq5TeRX4Xs/YbUwcLkL
         H0e+P2fe5ayVtC0dRpQMtM8WGAstFWMq3h9/P6WXyNvWJDIR3xsGwOf8idJoai4pV755
         ClOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id i14si92128eds.1.2020.09.30.18.12.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 18:12:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kNn9C-00Gzfr-Mz; Thu, 01 Oct 2020 03:12:38 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: netdev <netdev@vger.kernel.org>
Cc: David Miller <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Rohit Maheshwari <rohitm@chelsio.com>,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Andrew Lunn <andrew@lunn.ch>
Subject: [RFC PATCH net-next v2 0/2] driver/net/ethernet W=1 by default
Date: Thu,  1 Oct 2020 03:12:30 +0200
Message-Id: <20201001011232.4050282-1-andrew@lunn.ch>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

There is a movement to make the code base compile clean with W=3D1. Some
subsystems are already clean. In order to keep them clean, we need
developers to build new code with W=3D1 by default in these
subsystems. Otherwise new warnings will be added. To prove the point:

commit e666a4c668528ae1f5b8b3a2e7cb6a5be488dfbb
Merge: d0186842ec5f d0ea5cbdc286
Author: David S. Miller <davem@davemloft.net>
Date:   Fri Sep 25 16:29:00 2020 -0700

    Merge branch 'drivers-net-warning-clean'

    Jesse Brandeburg says:

    =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
    make drivers/net/ethernet W=3D1 clean

Then 4 days later a new W=3D1 warning has added:

drivers/net/ethernet//chelsio/inline_crypto/ch_ktls/chcr_ktls.c: In functio=
n =E2=80=98chcr_ktls_cpl_set_tcb_rpl=E2=80=99:
drivers/net/ethernet//chelsio/inline_crypto/ch_ktls/chcr_ktls.c:684:22: war=
ning: implicit conversion from =E2=80=98enum <anonymous>=E2=80=99 to =E2=80=
=98enum ch_ktls_open_state=E2=80=99 [-Wenum-conversion]
  684 |  tx_info->open_state =3D false;

This patchset refactors the core Makefile warning code to allow the
additional warnings W=3D1 adds available to any Makefile. The Ethernet
driver subsystem Makefiles then make use of this to make W=3D1 the
default for this subsystem.

v2:

Address the comment that we need to be able to add new W=3D1 compiler
flags without actually causing new warnings for builds which don't have W=
=3D1

Andrew Lunn (2):
  Makefile.extrawarn: Add symbol for W=3D1 warnings for today
  driver/net/ethernet: Sign up for W=3D1 as defined on 20200930

 drivers/net/ethernet/Makefile |  3 +++
 scripts/Makefile.extrawarn    | 34 ++++++++++++++++++----------------
 2 files changed, 21 insertions(+), 16 deletions(-)

--=20
2.28.0

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201001011232.4050282-1-andrew%40lunn.ch.
