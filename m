Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBHHNXH3AKGQEL3VY4OQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 554691E4598
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 16:18:05 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id w15sf9524299edi.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 07:18:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590589085; cv=pass;
        d=google.com; s=arc-20160816;
        b=iupt2UYMpVL+2LJw0o8qqFWvOKhuOgJOsO6PSK4rDVb+VxueKrO0aXGlHODrZW2Lz1
         38fFmetvwu0fCAR4mnXsLMMOsoWTJAx00Z7VzWVmHCV0I8G3mjdR4XUHYegWk1tS8btT
         P768VKe4PMoc6pRw6kqUTQnFVR0uquegP+7ZYL7G3c/sN2ekbqSDsOoOgkvFGqATNEp4
         CdByKjfI3vA4HruNbuAzVLbjhQm3LQeibJpq/t0xvpdd9BqV1/AqEKAqMmakPdM/P6Zc
         V/wLnscF494F2eT7J27K4VLJRyDg91Dyt2kUQAIu3qmLNuApoQUiUGdcK0XsS9jJvQZU
         el3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=/D6A7IanEgOorlQvnVsjRFI4nYwHGXTwYw0r7remtV8=;
        b=AhcLPiddhSm+d+H/QY/WmON7psJnYDqseLl7t/qBjkcmg2y0kr6UgGBOZCasfONHEo
         zDlAgn6LynHzTXruGUaIQZMXGn/xFtes+8UP4VU1gWgf5DbJ5pa4h4+mvy8MfKJo1UZ9
         TF/jmcOLx99eWpXhcn6G4YlKUNEneC1LxNIhqur5aBaY8TZ2FzcTjA50IeLDcDU1N3bO
         EpMxBNR2QxH2UzRX9hUBD4HX+9Vd8hBd4HIBVb0UG9CKHWa2MKUW+7Avdn3VG9LbPFrB
         5hTyWmAkLeStzyNdLfcAJjv3tXzwkxcNOpIz89vHP5DWYfe+2bZtW29gtrKHktg7soxH
         Ysrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/D6A7IanEgOorlQvnVsjRFI4nYwHGXTwYw0r7remtV8=;
        b=g8Uoqi68GV/NsOk8udTVrlVyI0DqOjrUFHyTVeyMrMxqzyvNxUrXp9PHLv+Zrxdcwe
         vDydVwzcgP2HSGRhACggrsdzU2OogAGmE7ftxOFkXi1qZUN7uW6R47FY+zG7Q98N1dDO
         vmZG6eztvrk4eLe4Yg3KGFNtw0K07bA784dtfeaxeLr7PEBI9IIxFPnvEMXZR3NXjb2F
         3AjiyQddJngHaOZt6wBcPVMvNTYk7Zs5Yd6Dq5BtwW46J6YgayZ/nKdGNNcBZ8lUdI9K
         vevmORaQZp+ojVgGBkzR3Fnu/jfnxNFpBP8SpgYfLkeY/SniPT5ORMg05V62r+0+W8tw
         oXHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/D6A7IanEgOorlQvnVsjRFI4nYwHGXTwYw0r7remtV8=;
        b=m7zq29HT/6G3nExkCgQ8RsngFeeh/Ufhd2hGY9DM7GRSQAYCuBfyffA/XdlKwE+dnx
         KvR9GS5Bp5hqnbC/rpAgXAT5LMLUq7D2G95/SJoVZaCTx5I9TvM/6qpK52FOcS1Dq6p+
         a0slE2B6IWkQmS2iARhMLGdV5h2BYKlMbD0DT9f+etOlspn6yWfdVIH0ToPkhQISsNgb
         M6d5ybnSGuBl5bLiNhI2/xl3F/RgV1Qcv3H2xed7v0VqUJ2EHjpm+9x0EU8NPx/+ezuq
         d5nIpfsdg2RNtqNtAck6K7Re1GcTbiCZ+899OTBns9IMwC25DFDpoUJXxWD3adsO7w5c
         wopg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533MqAAEZEBwYpoEc4CHtGmfxbwYA30aqm+ZLksREpNmznQlDZLo
	h4ghJt+H/hfpgjyJ+4YwXk0=
X-Google-Smtp-Source: ABdhPJyvzDk4HlefSjkx13uzoyDcBNU6E6nzmLgmfExz3tRCFWvyvqTQXLTcpvt06jT1O+38tG7kWQ==
X-Received: by 2002:a17:906:44f:: with SMTP id e15mr6041312eja.161.1590589085066;
        Wed, 27 May 2020 07:18:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:48c2:: with SMTP id d2ls7024482ejt.11.gmail; Wed, 27
 May 2020 07:18:04 -0700 (PDT)
X-Received: by 2002:a17:906:49c7:: with SMTP id w7mr6672730ejv.402.1590589084602;
        Wed, 27 May 2020 07:18:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590589084; cv=none;
        d=google.com; s=arc-20160816;
        b=cWH3eU1MeFKh7pQ51/7wGF1fK2PU8vnGZ3MNN11CVXeqNUgI1/UgExc/2v1GwjnA0r
         BQsSq60+C5naQgwlFGkv/TaG82aXfJMYWYRzT0ZybmRfv/R4AheBL3vewoHURP67rmQr
         nVDYEMJZ0Ej1Nz9PkFDf+s1KVLVY0+kl9X24HgojB6dOqE5m6ucCnbRYKHDzs7MvPsRn
         qnXh0OFlho1UfwO/SxVrsotFRMYPzvLHZY8zZ+RQY7rgNgO7ksMg5rkWS5THxlsVtuZv
         KE6RQGYet5Wxgk5c1ZxfrNkh+KXsXlzZuNi/ZeydvzSSrTv7i/EK5hRpBukQmfMkhKdy
         spfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=tBhYWGdyQ9+Zf+AlKVv0Y9+MMhHlVO3i30AQ2XEjc0s=;
        b=kXOw1gzbtWTKMpPVIDbUZE/1QYqKSeyQIYNvvqx5Ioy9El+k9OTpyUXLCFVlPEx0Ud
         yrkDWBrCE9VFCvytr0X84oM6VX55aLmOsRNjkAVsRVxarBFSIcZyjzVBEkT9FXAIfEwn
         3w8BVNX/APTYzquzQ2UOaeh2DsspSg0EDe4V7yxAj9FSZWkxV4a91Byzyk1dcK07MuES
         9kamzgBIzR2AK1HEw+TdO9NFJvT7Wmj5HfrZynu6SbxWGWDMZk8Nwj8vqW1HVkVlNV1G
         8qvEzQKiH/0IG3pfx4egyNDdkNGp21Z4P0qOTnNC4syTLhwLHRmNtooM+Z6ItTis4yg3
         JSPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.134])
        by gmr-mx.google.com with ESMTPS id a2si125004edq.3.2020.05.27.07.18.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 07:18:04 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.134;
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N3KgE-1ivQwf2h9O-010IcZ; Wed, 27 May 2020 16:17:59 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	Tim Chen <tim.c.chen@linux.intel.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Jiri Slaby <jslaby@suse.cz>,
	Peter Zijlstra <peterz@infradead.org>,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] x86: crypto: fix building crc32c with clang ias
Date: Wed, 27 May 2020 16:17:40 +0200
Message-Id: <20200527141754.1850968-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:HhqJ2SV7RLSWCbDR/hTyZUI75A0ol3DrkPR+HKRt8s2B+uKPzr5
 sGoQbkyCOlcIasQJ4GxCZxVJVCybUkZrIKlLy9IDynmJxpbIr6jtpJwOIoBO7FElWCEZyX0
 PVTkdYDcAY6ovzIwph/0l4Pa5R7bYypb4vviB8FW3s/p3tFLishxI/6QBcuV2p/+K6l/MrR
 vuKeLGO1IwcOUFrRIWiYQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WHbYaBFBR0Q=:+FS4KQXcRW9hNJM+f4Yhoc
 n7YjB7WfPFDkXieTES6QHnUzoXVQgicGfYasQXOkI0naBVDmtab6F8J2wJ9b/WrpeTPt9GeJx
 N+NN5PuTK+3GH9+WTU72Q3WxfbiV2M+3TG2amqi/CAfUfbREAVuYK2UktObbKQcBJdmEdFfCD
 7cJg17qONdtGsnYZoP9aBD50gP3Hm87AkpyeA40eangIsOP0IsA62Zc/alJLCF7Bxfl7THjb/
 3dyiw+ZDfqQCyvK7udDzfcvUQL38j4zha+eR4b0c1DuW5iRBy8/RHsR1g89eH/pKTENxL+vXj
 6S1p/TQ0pOrXha961k3Rrhup86FKDBLVJBmGUoLRgi/XrdWX3z5fYz1uDX7jgN2Gm0ShyNI5X
 vuwdwEkgkb1saDGQakKt2PfuFK9KNrRsV9jGLkgy08R39JXGy5Mr2+qn9sccEC0E1S281xf+g
 LEBttLehbAFaAxj592jr8sQnx2nl8hWsB1KKVaGtvWhibTBddCIFv7Mni1SjitLM4FGDp5lCB
 M+PusVi3dzep3k3HoN2DIt08B9p4gkLoaRRDg/65UF9heSYNwSnJX5FYhytxG38geSEQNibmT
 wfgpMfweD0FiIJHjtl2mC5FRhDOuukSstWXKrFJxl5Iyt4xeDphu/O5t0QFG9nEKcdM0+v4F6
 Sxc5qLI6cVDIAs2siPjM21Rb1k1b3ki9XjG5E2erMW3CucqQyHE/ZGBN32UPWtrPI+BTxiZR/
 kiB9nqxEDB7bYW1QXrNk5U2pAX5PLlL7lDJZD1ubhQ9irJy4svx/8ZtWLoWbNsnwrOlKFvnuR
 QxAf3V9rznLeg8bTkUgDclELrfx/8c4blhvV269am2Il/pZhh8=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.134 is neither permitted nor denied by best guess
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

The clang integrated assembler complains about movzxw:

arch/x86/crypto/crc32c-pcl-intel-asm_64.S:173:2: error: invalid instruction mnemonic 'movzxw'

It seems that movzwq is the mnemonic that it expects instead,
and this is what objdump prints when disassembling the file.

Fixes: 6a8ce1ef3940 ("crypto: crc32c - Optimize CRC32C calculation with PCLMULQDQ instruction")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/x86/crypto/crc32c-pcl-intel-asm_64.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/crypto/crc32c-pcl-intel-asm_64.S b/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
index 8501ec4532f4..442599cbe796 100644
--- a/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
+++ b/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
@@ -170,7 +170,7 @@ continue_block:
 
 	## branch into array
 	lea	jump_table(%rip), %bufp
-	movzxw  (%bufp, %rax, 2), len
+	movzwq  (%bufp, %rax, 2), len
 	lea	crc_array(%rip), %bufp
 	lea     (%bufp, len, 1), %bufp
 	JMP_NOSPEC bufp
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527141754.1850968-1-arnd%40arndb.de.
