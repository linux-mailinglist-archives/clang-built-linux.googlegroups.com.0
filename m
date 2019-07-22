Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBG4627UQKGQEEOGYIBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id AB68B702CF
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 16:58:35 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id l4sf8624938lja.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 07:58:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563807515; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cz95/0GmzEQslJ6+r2xxCwW8IS62jvU5z4QrGYs1cJztS3XdghRcewXtfQhbI/4YPT
         ViqyfW7Pa+tD6+4q9oUYVy5hL0u4L2K638OLsMzunLK68QRUrMsobpvR1nMQ6PIFVGrV
         c1iZSJeeTz28E4aoGRve24FQPa5Hu+NAWWzuL31ax/wB3JJJ6VWfw98ofuLoXBnjKEiV
         8RwN+5ULNYIoc9KBIrf9ZQs/e96YcDZt491bKXxMbh/AmYZzoCo6TO+9mplyo2v7eLID
         DDCFfGNFAR4IDUZiWUgigTU0fdCMXlgRBwvyEengk27mf32+2/ULs6avz9kYvF5g5Qa2
         mQ1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=6voxpSL/4b9DgRzxkCP/poc0P+Db9GLuklYJWdj26d0=;
        b=GSuxNbuviHsSZbqrP95QinmtFOZK/NaOAEeBNZTNHmfgXoNUb/WPTVFewoHDsV6yjt
         8WvGU63MSf/FZTqA9Ss9U3CVUYSMZH8tX0VYu4KzR6kC2pH0Ah0OzwsJ35zSPUItzYlM
         fDqNbjhQSoQYNOa6uawHC7F3APhId5o7E28aLq+xv9H4PC1PfZY/Pmp7f6noxmN+6kl1
         eQMXlZ7724E2Vvmakik/IyGWjQU0N0xlGh2+gEc1NgNvVKgebTKHqMVor6291bhQnBu2
         ZtK0i/NVJBCtVO4plILDL94T/R3RkZAVtGQ/BBebo5CtScPhA0jL4Z89AGbWYGurN6Yf
         0mTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6voxpSL/4b9DgRzxkCP/poc0P+Db9GLuklYJWdj26d0=;
        b=hSkWplRTQ5MP89NYNzGVHjWZmkcis8EDqMO0l/MfTaKowFunm49uSjTai7wIOCHtF6
         JemMZGqpLxApaEj0j+YKxNSs+f7KwhqrGQjF2naUyn+TIxZ9fPvTGwocnQaEJ6gGpJcV
         w40wT1B7dH08xeoM83+/hkK+eW0/qMRt/9qtTwMXAswrn/ExLpA28kov1Ne9ch4qA+r8
         sNmLPct37AWKfO2AKLLZeFkT4AtdU2MlNYwNm9BPSpYE6AaI+9ONLK5XJZOpDhmSGjgm
         OUs0GPLSHX5GIsWrCglczvbql06a31oPqJ/gahL23Rx0a1iFOnMhqCaUuihKcc/DlPec
         5N9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6voxpSL/4b9DgRzxkCP/poc0P+Db9GLuklYJWdj26d0=;
        b=h29s3nkgNbotBW330FvBruCufZdekTi1BpC1Z0wFxiTjE9B2F5e5+ZzB1eDycxIN+1
         Wfj6L1SAgRhoIrtkF3P6yWGCGoNrWiKkPs1vt5im2nWvBzOM/aKZMhVnIrzH0vkRpcX6
         wt1NR4xWfS2WfiG8n8bQjxEcVBKUzQyBNRpWAS03tGkSA8gLxPc944sE8m7kHr/Azgij
         H6PThRrkGIcT8GN4wco/c9URVO8cJhyRH7XEjDwv+K1MomJvJZs83FWBY1QTyYfjBuuo
         yKy59rc0CqVCgS4/cHcG/XIFkBwbybdwT1K2G+N0gbNr7LERACRi1NzzaJZEg9axbNhP
         YeBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVAViOOUWm2dbfMhEcvxFonYgRswe+Knu3Hf463yhSEBXuKz5EN
	t1F8quXldRf401dY6WkRhJE=
X-Google-Smtp-Source: APXvYqycaWiuxCudsPaZqRnDecbktVJyl2f0vCm1ns5IK7Ri97uR1S2tLDGI9dPS5dUBposCKH/JGw==
X-Received: by 2002:a2e:86cc:: with SMTP id n12mr12257398ljj.146.1563807515185;
        Mon, 22 Jul 2019 07:58:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8854:: with SMTP id z20ls4509783ljj.5.gmail; Mon, 22 Jul
 2019 07:58:34 -0700 (PDT)
X-Received: by 2002:a2e:8945:: with SMTP id b5mr35734257ljk.93.1563807514695;
        Mon, 22 Jul 2019 07:58:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563807514; cv=none;
        d=google.com; s=arc-20160816;
        b=dmINsOJOwUSaY5WtLDP3x8Kw3iUpEPwauWyKtYjNRI7TNXAn0eL9d0GuWIHoaD4hm8
         DKsuoyTa38tag8MPIRNpcwpUzfP0Ms4gOYISB8YL9YI9+zLrXp2V71hl4orgdWZqDzo3
         uai2nu5CoqDgT8J/OFKbJyFYwlZuD8ks+R5P64rMvEdPZjVdG/JaTAzBByLl8dFR3Lmm
         PX439eU2+Po8POK74o8a2VZ109Wv+aT79Yfh98tLgAjVbDixNx7u2sWtJtpyDOzsgZCA
         ohalJtAji0ooS7sO/arJ91XkUrpIBj86xG6TrfCiKYvYVUHrc15xzKvBsJk2A4Klq8DB
         X5Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=52VzTmPPg7fVI9CBKLS01AM1ydeS0fj7JDUEKzyArJc=;
        b=bbqzGYNHpuS5XxaMEbjU7AOmckwJAsPtJX/sutLtcdtd6CnKJFEv8ajB2w3tiOVdQp
         vz4Rvit2c+2h7Hq8so3ExdFBF0jpQ/u6RvV2oK0RzN9FwxQYT0Hv9CGG/hUGQ67Xnj61
         jcP3gct+J0U3fx2VE5eouZa+/Q4aCzAAHAu1eiREHbRCjMJ6t+stk6DsGaOFbg/cIcHo
         jhxCkUgRjij01mX2txNqgz0yT10ebTsXUAxmHaResQb/LUpBCyv8PYX9ta1/8K6sqPHQ
         atHa5IpLxbPSulIusJ6wgkjbwthmCaALDdg+R+Bc72Rx26cCzE/SC3W06zdCPa1z7kIk
         u6gA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id q11si1923818ljg.2.2019.07.22.07.58.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 07:58:34 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M72Xn-1hmYIL10oB-008bY6; Mon, 22 Jul 2019 16:58:30 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: David Howells <dhowells@redhat.com>,
	"David S. Miller" <davem@davemloft.net>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Kees Cook <keescook@chromium.org>,
	linux-afs@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH net-next] rxrpc: shut up -Wframe-larger-than= warnings
Date: Mon, 22 Jul 2019 16:58:12 +0200
Message-Id: <20190722145828.1156135-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:lfUDGrLpfiXr0926+j2P2OlmuIJ9NeSW7hz8xpL9W9/lJWhLyxr
 nvy0gDbgeppmwx5SNKpsWc+kRWqKjri7P6sr1ev6Ni6JpuD6b9lOpGqjq9c/mOazV/kZO89
 BhM/bodFV621uaH+Om47Oer2s95AQ9aOLPAg0UMDON68IcCMVTiV5llJknLtQnVDEQeonSM
 Bne5lVBalJEvcLsf+iUrA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FSBaxuTAGN0=:DC1HwUKvN32xA+BmgiSi7p
 5BlOr7hXovf7a2nSPKJT9fKI5oL3ewkotHvT7gChJ58N3ObJta+RX2z95PAIKvWuk7rnMGsfv
 cCC5dupWpKlz2umtRlihopD5G69vxMzetqMDiZCvHq3kBhQNS+CLBqKtsCXTKR7/xkA5g2V2F
 sJkqK8fwkMUGbflM593akcchF3u3g8FFRGvFxcoBmSH9uVlV3P8vtSezwQXtZwKmXsh2bpl+B
 DhPEkEp+2Jye5oLjpcUDWpARuAbNbTI05mMFS+MKlYffblU0nOEYCgnywnccztSdw1MlSy2o4
 P/VHWgYnRuNAkRyWUp4UYrBlEfvotJd4jrQpoCWebMCvOXEOu/7veqN4SdMc5VMllvJwBC/R8
 d+JrNMSHEVbp6bYuZmmwXLVwl+PRXk3nxqRwgYLfyWHxEFJr+iOY1qaANkZ348iljRePrR1+F
 5mRdXtq/oGsDbALMLO8EITVqnD5HaGfPnSMxlP4XfUxjmOMW3Eu9e9WBXebZT8OsfB7o4wu1Q
 06+w6tVTGHhapGjBtibEN/LsZ5uz9UkR5X7oMNSfoD1RsrKPThoDR52oQYf6pCNYwfsqhMFXq
 +8tAm1nyxr+xYaDzaDuSKYLL+8oY+KT/EbYd2ymalbQbVWKrp8YlSQgaeAwVBiD9Yn/1JlDYf
 gliInbSQrx/vFOIz80D0jUg2N4k4D/zzJkm+km1/nqoV3eM+eNUib1KVsxXmzUKgpJG//rndn
 T+Irze9420UQg0b97RVKHAZ1dKwPJuYld3rpxw==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.130 is neither permitted nor denied by best guess
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

rxkad sometimes triggers a warning about oversized stack frames
when building with clang for a 32-bit architecture:

net/rxrpc/rxkad.c:243:12: error: stack frame size of 1088 bytes in function 'rxkad_secure_packet' [-Werror,-Wframe-larger-than=]
net/rxrpc/rxkad.c:501:12: error: stack frame size of 1088 bytes in function 'rxkad_verify_packet' [-Werror,-Wframe-larger-than=]

The problem is the combination of SYNC_SKCIPHER_REQUEST_ON_STACK()
in rxkad_verify_packet()/rxkad_secure_packet() with the relatively
large scatterlist in rxkad_verify_packet_1()/rxkad_secure_packet_encrypt().

The warning does not show up when using gcc, which does not inline
the functions as aggressively, but the problem is still the same.

Marking the inner functions as 'noinline_for_stack' makes clang
behave the same way as gcc and avoids the warning.
This may not be ideal as it leaves the underlying problem
unchanged. If we want to actually reduce the stack usage here,
the skcipher_request and scatterlist objects need to be moved
off the stack.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 net/rxrpc/rxkad.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/net/rxrpc/rxkad.c b/net/rxrpc/rxkad.c
index ae8cd8926456..788e40a1679c 100644
--- a/net/rxrpc/rxkad.c
+++ b/net/rxrpc/rxkad.c
@@ -139,7 +139,7 @@ static int rxkad_prime_packet_security(struct rxrpc_connection *conn)
 /*
  * partially encrypt a packet (level 1 security)
  */
-static int rxkad_secure_packet_auth(const struct rxrpc_call *call,
+static noinline_for_stack int rxkad_secure_packet_auth(const struct rxrpc_call *call,
 				    struct sk_buff *skb,
 				    u32 data_size,
 				    void *sechdr,
@@ -176,7 +176,7 @@ static int rxkad_secure_packet_auth(const struct rxrpc_call *call,
 /*
  * wholly encrypt a packet (level 2 security)
  */
-static int rxkad_secure_packet_encrypt(const struct rxrpc_call *call,
+static noinline_for_stack int rxkad_secure_packet_encrypt(const struct rxrpc_call *call,
 				       struct sk_buff *skb,
 				       u32 data_size,
 				       void *sechdr,
@@ -311,7 +311,7 @@ static int rxkad_secure_packet(struct rxrpc_call *call,
 /*
  * decrypt partial encryption on a packet (level 1 security)
  */
-static int rxkad_verify_packet_1(struct rxrpc_call *call, struct sk_buff *skb,
+static noinline_for_stack int rxkad_verify_packet_1(struct rxrpc_call *call, struct sk_buff *skb,
 				 unsigned int offset, unsigned int len,
 				 rxrpc_seq_t seq,
 				 struct skcipher_request *req)
@@ -397,7 +397,7 @@ static int rxkad_verify_packet_1(struct rxrpc_call *call, struct sk_buff *skb,
 /*
  * wholly decrypt a packet (level 2 security)
  */
-static int rxkad_verify_packet_2(struct rxrpc_call *call, struct sk_buff *skb,
+static noinline_for_stack int rxkad_verify_packet_2(struct rxrpc_call *call, struct sk_buff *skb,
 				 unsigned int offset, unsigned int len,
 				 rxrpc_seq_t seq,
 				 struct skcipher_request *req)
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722145828.1156135-1-arnd%40arndb.de.
