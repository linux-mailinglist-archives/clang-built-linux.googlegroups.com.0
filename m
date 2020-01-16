Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB3NQQLYQKGQERAIYNRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B0213E454
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:07:58 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id b188sf13333751pfg.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:07:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579194477; cv=pass;
        d=google.com; s=arc-20160816;
        b=kLHo1dzDVe4jp3vH00iVGa3pJxy1D7Z/NOzJz5ehnhK3zCu/x2DhTe/NapW375lMlk
         Ylf8xvUTPOHMZapXRLvKI0PjE5E5lth9IdIgIliUG5B8NtPwmogF2wvPjkWnVPNK98ex
         c3PelcoW28rxgVkOmQJBZAUqIo5SapeNJ7ZRNoFTuaomxLTBYBU/aSOtckiSQWURfekC
         uYg0W851Yw1jxuOECygNPcfX0mwKpfubmEw13zczfpJM9xAw/j5UW6sD/7cwv57FhobA
         f4+kWx81nnJR47ONb05tYKSi6fGJquB81k0z6K5zYNUJXmvji/+LDsT0FME8cWtywPh7
         SG3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1PMJCw46cb3R9rgiPme57tqiyb3DgJWZqfzmm59Mzy0=;
        b=Zj4v5YQvRPoX7qP2ULFku8i6iSg94b/9RYMVmK5OvMh1E8ITtDCPDQYutA0GPWdOmk
         ZuyeY68OsBCZs7ygiXjA3aH8PmKXIFbzGK9Q/+dxT1cRUCYM6/pz2Kf2cV/BuEBi7fd6
         SjQuJsyeNu53z+/ixI5EYxtFr5+IYQ+EHfOijitZKANYMItur3aA/L4WELe8GYb5A4S5
         +vu2rBI4Ele2ZD/aLIbzYy2e2NwUl4D0dKfkZIsawDF7axEfWDtrT+Al5oOy6VtqLPWP
         JcOdAVoHPPwMnixsQCpY7+bAeUsqKqYurdYDA71o+CMervfJGXp/YpWKCWxsISgqOJfr
         TCEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MeNmKVAk;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1PMJCw46cb3R9rgiPme57tqiyb3DgJWZqfzmm59Mzy0=;
        b=gkEQzzHI9rIpLl2mtT0NNL+TO3jPLf5I1CT/yWxPY/WcfO8Z4nWNsuPN9hN6w7Liqq
         psNMVWdbB/XSgowAxaIfd3Vk98iyc5CHKII5pRvZm3epUN5uh8Hh+5z2ppMOnUQM2o6B
         y7ZJGNVQhLpjBoC1J9fF1w3gByCEoM1pBcjqq3dCZnbioN+Rei88UQcBzTlEoQIcH7jw
         +XyrPpEHds271+epX6J4pXUmx5w/xpQut1NfNzSIxLWOBktp9UhyylemD2UaQy4q5A1+
         2eFzJOr9TelUYn2cCHkfNLuGoTBBOB2kGto8r1MHzDNfZLrAYIHtYrcVzmHu+RTXmXSe
         HqpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1PMJCw46cb3R9rgiPme57tqiyb3DgJWZqfzmm59Mzy0=;
        b=Ln0snBu8bPx+ENprTdzzrhrJrVa/FTPNQZb7pErAr/PNyURkovUjFrVeiCQBcahK19
         7QA/3S4109w0E45i3GYzeu7Sbq0AbyvEjObM0SAo3puAXpWvG1OFbdq3b4HEeeBqazLW
         C4f5cIxibmB/AeTN1H/e+lJEMHoiPki0BsCGYYFA4o0i4TqBTJHBvCoeMN/AANFIr//g
         Rh6Cwn1lVwroCKmzqaFQ2TterFF7vGJAKtVqAnp5giMVU4OCAOuj8wzvbsXu3JyKTNs6
         ZniCrgpl4qzQjQ5HF+6CNZK42VJGWWEAHTMn99SU7GLxEsmFm/J4YPS67MWF7/7NRPwV
         qogg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUJBocR58TpMPllf7eW1Ha6qoPEWd5a8oFXq5dc/JnPRNFEPy4I
	2yOWCf2YHPyqh5DcRz9JUWI=
X-Google-Smtp-Source: APXvYqztebZNbN4FhvdiszddFHlHzKgTHI8mM3KY2IasXD0vKQprshkUB4ZlJ1lC1dGEVAOYp6yfHw==
X-Received: by 2002:a17:902:b788:: with SMTP id e8mr34060439pls.1.1579194477160;
        Thu, 16 Jan 2020 09:07:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:28f:: with SMTP id az15ls1030649pjb.3.gmail; Thu, 16
 Jan 2020 09:07:56 -0800 (PST)
X-Received: by 2002:a17:90a:b78d:: with SMTP id m13mr74475pjr.100.1579194476765;
        Thu, 16 Jan 2020 09:07:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579194476; cv=none;
        d=google.com; s=arc-20160816;
        b=zmS6QwK2SZSsSQQJjG42pYsn72e4rM9QOobIVM47W2pti72vbb3rq+CGGhk/7xWJHB
         S6rb1Bin/9A1NpeVMHdVJrvPq7WS6aUGfzF+jsSX1HSkFhnnq/ZLitER/7TUm5LDtjEz
         Ip7NGLCU7my8xlxT0UPPijVgLE/jjpJpZhbhUh0s791pipo46tzWR9AwX97YQ1lzkET0
         qAZVVe6OHeGO6tXrewUGoUpIxypWdCL1rKM7UW/4e1ODygCQvS1dIrL9xh26+YHuoI4p
         HX4VcK+ZgrPJKgS2v0xA4f0qIlSDP0/AVfbScSyVjPh7zNYiLdcBYMBKhJRqTLrDoG8J
         +vrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZiMqEyXpy0xoi4PIYqYn342adCH0+ioFKmYZs9jibwk=;
        b=eLshRPeK22HwieWk3XLU5zJAfArRxYUped1ZcLydZ98pa06fGG4VH/KayeLZ0+O5tH
         LuaxjAHMRcuPHMK9bSDNcfxGuRYQARFdrrb8vwohh2Pb9r0m/lqxPasGclveDeq0vMjW
         5L1EOXKY/5tfQhzXhEatDZrOWu9GKnJSQ8cJ3MFGTTJN16w+6Xa9BUzGyGEs+rXs2bLo
         NajwuNZUYyT4Yj0faBvVVBxDs3WBVvi4O6M0xToRX2LBcKgVOhxlYrlMltQT6t6GhL4k
         nGCWNg8VSfnsPfDXmyCSe0tyn8QFgpY6R/jCkEsS7nK9nGnJHJUNgGlH8tJawpORlAZh
         pHOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MeNmKVAk;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f31si80407pje.2.2020.01.16.09.07.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:07:56 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 545B120730;
	Thu, 16 Jan 2020 17:07:55 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Stephen Hines <srhines@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 379/671] misc: sgi-xp: Properly initialize buf in xpc_get_rsvd_page_pa
Date: Thu, 16 Jan 2020 12:00:17 -0500
Message-Id: <20200116170509.12787-116-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=MeNmKVAk;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit b0576f9ecb5c51e9932531d23c447b2739261841 ]

Clang warns:

drivers/misc/sgi-xp/xpc_partition.c:73:14: warning: variable 'buf' is
uninitialized when used within its own initialization [-Wuninitialized]
        void *buf = buf;
              ~~~   ^~~
1 warning generated.

Arnd's explanation during review:

  /*
   * Returns the physical address of the partition's reserved page through
   * an iterative number of calls.
   *
   * On first call, 'cookie' and 'len' should be set to 0, and 'addr'
   * set to the nasid of the partition whose reserved page's address is
   * being sought.
   * On subsequent calls, pass the values, that were passed back on the
   * previous call.
   *
   * While the return status equals SALRET_MORE_PASSES, keep calling
   * this function after first copying 'len' bytes starting at 'addr'
   * into 'buf'. Once the return status equals SALRET_OK, 'addr' will
   * be the physical address of the partition's reserved page. If the
   * return status equals neither of these, an error as occurred.
   */
  static inline s64
  sn_partition_reserved_page_pa(u64 buf, u64 *cookie, u64 *addr, u64 *len)

  so *len is set to zero on the first call and tells the bios how many
  bytes are accessible at 'buf', and it does get updated by the BIOS to
  tell us how many bytes it needs, and then we allocate that and try again.

Fixes: 279290294662 ("[IA64-SGI] cleanup the way XPC locates the reserved page")
Link: https://github.com/ClangBuiltLinux/linux/issues/466
Suggested-by: Stephen Hines <srhines@google.com>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/misc/sgi-xp/xpc_partition.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/sgi-xp/xpc_partition.c b/drivers/misc/sgi-xp/xpc_partition.c
index 0c3ef6f1df54..519826ba1378 100644
--- a/drivers/misc/sgi-xp/xpc_partition.c
+++ b/drivers/misc/sgi-xp/xpc_partition.c
@@ -70,7 +70,7 @@ xpc_get_rsvd_page_pa(int nasid)
 	unsigned long rp_pa = nasid;	/* seed with nasid */
 	size_t len = 0;
 	size_t buf_len = 0;
-	void *buf = buf;
+	void *buf = NULL;
 	void *buf_base = NULL;
 	enum xp_retval (*get_partition_rsvd_page_pa)
 		(void *, u64 *, unsigned long *, size_t *) =
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116170509.12787-116-sashal%40kernel.org.
