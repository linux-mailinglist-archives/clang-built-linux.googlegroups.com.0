Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBENE2LWAKGQECHYTF7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 6701DC87C4
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 14:03:29 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id g67sf2007437wmg.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 05:03:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570017809; cv=pass;
        d=google.com; s=arc-20160816;
        b=anNe7rhGcQHCrV8TPQqVm9Ww9W4kbGTImFn5Jc78V4Nry/2TzdWCWufBCZosEMrl9E
         5ebLBT5Ht+nQ2y1eS5Tl96/Lm1sMCCjtiEzCdhKSRGgq+6hupvgMjC4/iK+9gM5srhf3
         xyYgdgt5Azevak/0K/NTlcMBfjFNIBXRGBKy2iVZdKe18GT/2JwK9fNiIgpBdhxc8gUs
         y/Qy2SEnIJqjE1fET4ZgIrJi3W5xErtHsbNnFluySVzfkQDyKunDm2vF28m5dOJOy4VT
         AMBg8W+JYR7uEbJPp7BIZzorhuy/czS4BBRC2BpCseVGq8MZ8Lbdc39rcU9wWwXhC3J/
         ztzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=OYgNKEa665Ua57Jhz/oGYbzO01Grcilfb0Ei6OUNMpA=;
        b=xYTzY0RYirUrPs7AnLSobhxDSVyZEZs/f+IA+9gwJJPTFj9+5i08p/thON9QEGLv9e
         0M5aWXhXnvz+9hldLcWFHBqKaipq+LBpJ+7Hb/cXsF7cBeRonHPwreo8XuDU/HKJ/zgU
         CcFTrtPaDT7jOzmKWJ+iTC/ufotd8Bly19JLrcIAES9RCcasWLkKeuAnB+0cYacixQ4a
         thNygmQnNF4ftkCaQ625Ixw/CIzRPH7Pi+j2QxBQ+oIcNGkNTOlCcd6WqBEriUedOdDc
         hzrkqTnkeO7uS4TWSLhrlT9hEaAN6lUz0ypTKmbgaTPHjSbul2Vl4NCoQZ/KhibM1ETb
         BbXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OYgNKEa665Ua57Jhz/oGYbzO01Grcilfb0Ei6OUNMpA=;
        b=sZu7s1/vVFGtFdx9VfO2LhTZs6VQrUmAk19AUVlj/FjBzQ9mfLdKRVbKkAOQhSdxgH
         3FVZ3FoBdei9/z6KtNGbr78/mWD3WLHCxgu6bADbym4DLvnUJBOH0KeXYrQh3yXy5AWK
         nwzJNGsv309iPImCyL+KC+hPmxWtaPNm14fHo+Yq5fwIdnjb+ELQlPWTPdYQlWbgKz7s
         e0XZSthofN5HCqovewaYakPIRlHGTVG24NCg++LGEaH/KVK7ZJvc+SfZjLlGZIdStOO2
         S61FzkJ+Ay7DlMDIBaxNgB+DuV6KxC/VfYrU4H9+p5AHNsNofonLHjATGnwBvcvC4oY3
         1FYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OYgNKEa665Ua57Jhz/oGYbzO01Grcilfb0Ei6OUNMpA=;
        b=OLLEnUDUhOCG/1Ly8ihOgz6qi12Qeo7MGVOFai+5JksbFHFcthPW1W+zEF+7cAfmyR
         LS4LSp7nV06Fzqxw/ry6UImidqSODPc7ChyIdb7m/p/LXGMLYDslFQfz8JYnf0c+CF4b
         uoIJp3l8ainxq8iPnKIq6UPIapaE+xglDTczWCIJPxEkR1w+pNw3Kxj+DlXeWX0G7Pna
         oqlifoLBVtKOIkwa3NyVVRV2aZ1DbBR/ASAIU+TxIPcDf2gUtzzEHBBARqQ7cPi2xwpM
         V/8ugwp0QLUOwWuUjhVahmGnYnfkKsoFgPvEvEdNiwHNjvysSpOw+GOm31QeT/sFGGCb
         E/KA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXHk0rngh1uv8bAnl9EMYc8EpiF3N7LtRj/L81FEz+1MkbTBt6B
	NNdFAJh/9ya69tGYxm960u4=
X-Google-Smtp-Source: APXvYqxcRNV0Gi60Gjasgcm0KaztOjGf9W3828zzifNki7YmWshJszN07d8wm0vA4zvLlmQvZukczg==
X-Received: by 2002:adf:eb4d:: with SMTP id u13mr2615493wrn.224.1570017809093;
        Wed, 02 Oct 2019 05:03:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:c143:: with SMTP id r64ls842862wmf.0.canary-gmail; Wed,
 02 Oct 2019 05:03:28 -0700 (PDT)
X-Received: by 2002:a7b:c44d:: with SMTP id l13mr2562800wmi.171.1570017808683;
        Wed, 02 Oct 2019 05:03:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570017808; cv=none;
        d=google.com; s=arc-20160816;
        b=KFoL7JXBxbS55TbWLw4XpvU1LAQPJi9O/ldYK0N4j5G6c/ctwf/kcULKJqvWVyU7/E
         +s5Z0P8KzY9SD84Oi7RHG5NIjuAfI+i1bXmm01qrgQwcrW7c1dGHy41VekuDfQ9iZR29
         7znJBm1v0f7LcKPSz5GogoCBNMJf8tSimvzuL9b7BGQtXvW1iwkQaVGYZuJ6styBiXsm
         7EmeFw41V97o66gFf3S97lesqPOz6kuYp1/Mo6KPSrYJZ5nUUdJ+cGsZkJSUAmOUwT/v
         WC/BZ/E4/oqrBAvdVZNJqxKCX3fDV4cKn+xdUz6rDhRxIlypYoKu3CCoaLlj+9f9TWYb
         n+KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=zuLtAnEfiCYyIhvEUGcLhnNeseBA5doXkBloXUwWS70=;
        b=wdCU80zg6bTi/47tjge6Zgbmh3EPuE92bu8pfYqBxjVZIEW5B/zN6H1FtJB+1fiMtg
         WkDX634WHlzeJYD1PFml8TmyCrI8qUSmSFEy4+3ZJfJ9zbVs5xDbuPzqb+LAEMhJpMdS
         YAf53BPS3IjOISIe36xL1xqH6Fce4hGSmQ9o6nRhu6SEZ0+i1lak88iFH/9hy5/gCf5W
         nZLY20sbpCpbdQF7vDMRd6ptHYCXAT+NhFqRwgFZulEHcISoG57qic+MCtBeW5PeiKJM
         RB+DZFvokJ6XZuYDDFZq6DJYjrHPI3nspTd6d8zwpE8toDbhj5nnCfqbgZnAtwZBCQoe
         gqsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id x8si412432wmk.2.2019.10.02.05.03.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Oct 2019 05:03:28 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Mzhar-1htpHS1ojh-00vhrB; Wed, 02 Oct 2019 14:03:27 +0200
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
	Le Ma <le.ma@amd.com>,
	Hawking Zhang <Hawking.Zhang@amd.com>,
	Huang Rui <ray.huang@amd.com>
Subject: [PATCH 6/6] [RESEND] drm/amdgpu: work around llvm bug #42576
Date: Wed,  2 Oct 2019 14:01:27 +0200
Message-Id: <20191002120136.1777161-7-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191002120136.1777161-1-arnd@arndb.de>
References: <20191002120136.1777161-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:YNsgZzHNCw392v1rgjHTUEZ8pz20uykSXH754RL9iIOb5deh2YJ
 VniPYenT1ADFLCFsCzgfROvSsNEN3OnGKEcwzAbZX+eQqWv1FYpwjvY8qgQaQWagz6gA/Hj
 n50Orae4/jwItelwmwUM+w8MCNKZ1bodhPFaG7DBNsILr42QtEuWuTsTPF+I9vNTWhFwdKi
 AC2C3ZG7mUNQXMnuZ9GNg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4D48kbU58hA=:M0Ukpx58xOP2bgAOCbesZg
 Ll3K2WKrJMuAIV0rQMg3YrjRgy0vn19WxNhnTpIkrflyRiZWcJOM0wBeRuWKJeyvUs0Rmo5L2
 WT/4Q04J4mCDT0lGHrQHxf0CSt7FRwbIaoymM8ll6+AnjlipM3gBW2vuD399wywXHODhQH/Jj
 kmmHm0vPKelSxnjmyF5QKhW2vPKNuNrxHXBAuShJhblFiaT4Tpite+9Tpqz5t78Mv1d0c4+St
 IPO467Ji+f+nalLEiSfYfSOueaNIp0Zh2ECvF8gYGuCtq4mQgaFQma45iRPDMa0dLQp2LPHv5
 s3HOgLJcrW3+YLL3OgrgSAIqY/JojFmQs6jVGI3Y/iaIHFpiWRvNCCVqhadcZDljlJ6/isT3C
 cWMwh3wga4zB1HZAibk87TdIUOsEWosHOOSejWot8HMi7thZpGsmWSYlpaZpcggNF8Y5ef5cx
 S+AFB9lJCv6tLjnDzT5CItgHD9CSDilvn5DV5AQ2CSUe7CMLtj7FRRuRtxGnzKXWHsDiqUK2X
 dLpSNCwET1M9ENlBeQ5D+BhxBx37HFEUhCYKyJqFJoQbTkGvZkwazmwaChizrxq1gbyD4vDeD
 GqCyA1nhBCBAM2hW+2uyIFVsDMDpeg/OoBtcZMPB8aPwvr2q464wcpu+nmB0VWQnFJx8hRRKp
 kx+eBUDSoB7gkuurGSeum9uDonECxoSFhh//75/Bmdr0Te33FTyRIMUwkUlAfiVlOVC5ga602
 HNuDLNkHHth6E821u1odV2gGvJVg9mgsLl5k0rHpfHXjU15zA2Ww4I8gM2c4ZgC5ypKzC/eg5
 iac5xdsyiVk9Kf4KiWNLvvcteewurG0ZAiyq3Yo5GGXvCGBgLkIfnziVSp+lP21xvwWwPUCJr
 pxfok2TuNB12F2uGor0g==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.187 is neither permitted nor denied by best guess
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

Code in the amdgpu driver triggers a bug when using clang to build
an arm64 kernel:

/tmp/sdma_v4_0-f95fd3.s: Assembler messages:
/tmp/sdma_v4_0-f95fd3.s:44: Error: selected processor does not support `bfc w0,#1,#5'

I expect this to be fixed in llvm soon, but we can also work around
it by inserting a barrier() that prevents the optimization.

Link: https://bugs.llvm.org/show_bug.cgi?id=42576
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
Apparently this bug is still present in both the released clang-9
and the current development version of clang-10.
I was hoping we would not need a workaround in clang-9+, but
it seems that we do.
---
 drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c b/drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c
index 78452cf0115d..39459cd8ddef 100644
--- a/drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c
@@ -961,6 +961,7 @@ static uint32_t sdma_v4_0_rb_cntl(struct amdgpu_ring *ring, uint32_t rb_cntl)
 	/* Set ring buffer size in dwords */
 	uint32_t rb_bufsz = order_base_2(ring->ring_size / 4);
 
+	barrier(); /* work around https://bugs.llvm.org/show_bug.cgi?id=42576 */
 	rb_cntl = REG_SET_FIELD(rb_cntl, SDMA0_GFX_RB_CNTL, RB_SIZE, rb_bufsz);
 #ifdef __BIG_ENDIAN
 	rb_cntl = REG_SET_FIELD(rb_cntl, SDMA0_GFX_RB_CNTL, RB_SWAP_ENABLE, 1);
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191002120136.1777161-7-arnd%40arndb.de.
