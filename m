Return-Path: <clang-built-linux+bncBDLIXLMFVAERBPNVQHVAKGQEWEDWEHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB027AB86
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 16:57:03 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id t19sf40710934pgh.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 07:57:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564498622; cv=pass;
        d=google.com; s=arc-20160816;
        b=XgiJ6fnTw/GDqErV7x2PiK1rV4f9rHsG48k7EEyeWgx9QIhKVLoDTXVuBoDI2nM1ZB
         l92B6gMlaSYP0W8wxHqit6RijKHwrBxdFHMe7JBEfsoch1BRokEL1SwH8VOBj2zqu91w
         aa92WDstKuzqp5zVxWGRI6AwbO96mcYQ79oFsrMQVYBh4kwwtujMJNDxsRrIDbxVjPNa
         4Ob5x1bI5SskuLOv/03nmRwWom2suFler5LhbArmzK7wW2mkLiIjX91SNjmM2pL1Rln+
         Fw/gBZOai+LFY/FieL97PMgWUjkRxcA5Ff3VlOvFQyxkQ5bf14h7DRcKZ/NfbsPluNpq
         wKBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :date:cc:to:from:subject:organization:sender:dkim-signature;
        bh=zRt+++MczUfLyCpcVJ0j/cSVtdKgCDO4sypaz2lPfQ4=;
        b=S70oYEgqkwi17EBWzPThHWiaVB8QhkZi0/5pJP4eRSAEKgv+eBNj6/xb9MzacWJGCh
         2NYC5+PI4X1RjsOaF9KC2O27xmZzdoCY7VCL+jInsuZ92Gsuv7Uy8L9VKcvIjlvs8PoQ
         wAK8VnsVYR4iLxPhnbEET0+Wlm1qcbG2x4jY74j/WGFjAIg6DlQ6uDKNVcgOgEvPyEXI
         nlz5BkAJ4YZk0RvjtmvEXqnYz6vlM+iUcCL+0om5W4DUUZeOgxq6xIW26P910Xx73vqv
         Zr3wZaWmQq5yc4AtQ15LkTXj/W8GSAMfsTMZT17AUio616/4TU/rHquxTcJDRXxsB35Q
         fZlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dhowells@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:organization:subject:from:to:cc:date:message-id:user-agent
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zRt+++MczUfLyCpcVJ0j/cSVtdKgCDO4sypaz2lPfQ4=;
        b=AMjQuSBC+Ga0HDxFotBmTL6LRLiwpoz8b+mxK/3nsGKC0aVI5i2KIP6Rx3s1gZmRjt
         0LQ9VJZqcj+BHGB2i3lihRrW0fK7G1RShI+N4UUTSPB2y5xZy7LoZBmWqvRIrV++0lAN
         jjOXn6PHhUnWkTdIDLvHcMQt4mpWH5t75gcNg2qUBKJUPJKCdDRGDaavsUC/lv+uvXZF
         ceF7skOGH5krjHnXYABMRYS56t0c/p4LNIxVLs+a6qMxR2eta+0/AH7i4ak4AvpcbUNL
         XDzo+SQjaprG7pyuAINNtv9CtLQAkMt3wOBrT7MJp0E6OSGE2YkSTFyJiUzorZlMlvOR
         59Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:organization:subject:from:to:cc:date
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zRt+++MczUfLyCpcVJ0j/cSVtdKgCDO4sypaz2lPfQ4=;
        b=uKZz+qByw2ihUNy2ZFTruRJYvsEt/0TtGA4/G/4b7RA+X1Kn4a9+qQ/ml9VST1Wv1G
         DfeSW48gx8Waa4gE9i7xfZwrEMfPCVMXNjwEN7jJrxhWBWQrsqalbqxv+gfD0ZJc0cgT
         qRdQDbFOBDGyOS/veI/2TeVEIMEM7R1By4SnTMkkXsje4fYn/X9ia5xxDKHUL46fLiWu
         1vWmVkbVAHthy7WER6U7f/urQp9+DauAoUmLDg6vqeg3G4gNazUfR2f25Y3RXFPBR4+d
         secjzi/W9j9KPOjA2QvI+mwrqaA8vju7hwewhWbyW7kukj7ZEYU+IfCAYp1qV4w3eHMu
         YM4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUnCKOvi/CgDK3bBcqtUFs/7N7bB+h74N3s+wdB3yKaoiJasoL7
	Hh38OaAxtO0tyEgk1fZvpc8=
X-Google-Smtp-Source: APXvYqyERKP7+22ISzMh1GWdwLSQSC6j4ddQ9GoF/twrHnIYA6qNlQ6QOj/SWfWFqTiNqtTojyIp8A==
X-Received: by 2002:a62:7d96:: with SMTP id y144mr42370444pfc.156.1564498621485;
        Tue, 30 Jul 2019 07:57:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ce4e:: with SMTP id y75ls13558343pfg.11.gmail; Tue, 30
 Jul 2019 07:57:01 -0700 (PDT)
X-Received: by 2002:aa7:84d4:: with SMTP id x20mr41796881pfn.60.1564498621147;
        Tue, 30 Jul 2019 07:57:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564498621; cv=none;
        d=google.com; s=arc-20160816;
        b=qIOzdx3DcMEVYWWiuNMG5EUj6aci/jxapP57f1qAj18c6KhzVhynJLQs9720wFo+yA
         o18dNYuvaLg5tQFCj2sNVXDyoiYgdV2RsLHF4HIHmqouglISGnnOS1pY6sttAGPWJWeP
         E4+S+rMaQbWvcFur3OKHeRwJi/aQywTSymXwcYj3Jwo4kGtm+Qbwb6zIdNlcgJlkSww3
         Ddx/PTgXL7LwUe5oPDD3R8GwLOf08nWZtocTu55AqJbSi67bqDfwqnMSMsLZMV8PawYQ
         oICYAhdQDpTvWt6EUInRX4JMb/oo0WBkpA9vf4MjcJBb1GArLJHIib1FMlwBZhI10nzf
         btlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :cc:to:from:subject:organization;
        bh=R4HI5PWe0GBeO7yICKUFp5u8pmBXByu2z6F/XudH/Oc=;
        b=BtVcZrQvFIC1ylLnBgvb5S8i6rt8sMJG1SRa7sM3PJSsAXp3yQiDf4yxYPdSITiYmU
         XTP1Pue07ijGMyE1muMOQK3QIM2uPKizqxQw8ZQqlixEIQVez+K8A6ClzgnS0z2aP6Ce
         wyRUh7nlNPO6Lkcq4J5fENBmKVXGYanYEpJ8j2Cy+dNMDMXTbTOCauqgJGqdJsBRaGHA
         BvoYlmqKllrHq06/KjzjYUhi2nknjIqg2CuIQ+q7uAiNJSTkWKDJ+Zl6UkARjU9/j4wd
         VGT70g6ORQknKusqIfL3YmXbBbgMNoaz5J2RGPrvjeTPH96aF5u/m8SeDyNlWAr9jIY4
         siew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dhowells@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id i184si2198677pge.5.2019.07.30.07.57.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2019 07:57:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of dhowells@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 55A9481DF1;
	Tue, 30 Jul 2019 14:56:59 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-120-255.rdu2.redhat.com [10.10.120.255])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CD5CE60856;
	Tue, 30 Jul 2019 14:56:57 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
Subject: [PATCH net-next] rxrpc: Fix -Wframe-larger-than= warnings from
 on-stack crypto
From: David Howells <dhowells@redhat.com>
To: netdev@vger.kernel.org
Cc: dhowells@redhat.com, linux-afs@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 arnd@arndb.de, keescook@chromium.org
Date: Tue, 30 Jul 2019 15:56:57 +0100
Message-ID: <156449861697.10315.4666924841804740487.stgit@warthog.procyon.org.uk>
User-Agent: StGit/unknown-version
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Tue, 30 Jul 2019 14:56:59 +0000 (UTC)
X-Original-Sender: dhowells@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dhowells@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=dhowells@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

rxkad sometimes triggers a warning about oversized stack frames when
building with clang for a 32-bit architecture:

net/rxrpc/rxkad.c:243:12: error: stack frame size of 1088 bytes in function 'rxkad_secure_packet' [-Werror,-Wframe-larger-than=]
net/rxrpc/rxkad.c:501:12: error: stack frame size of 1088 bytes in function 'rxkad_verify_packet' [-Werror,-Wframe-larger-than=]

The problem is the combination of SYNC_SKCIPHER_REQUEST_ON_STACK() in
rxkad_verify_packet()/rxkad_secure_packet() with the relatively large
scatterlist in rxkad_verify_packet_1()/rxkad_secure_packet_encrypt().

The warning does not show up when using gcc, which does not inline the
functions as aggressively, but the problem is still the same.

Allocate the cipher buffers from the slab instead, caching the allocated
packet crypto request memory used for DATA packet crypto in the rxrpc_call
struct.

Fixes: 17926a79320a ("[AF_RXRPC]: Provide secure RxRPC sockets for use by userspace and kernel both")
Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: David Howells <dhowells@redhat.com>
Acked-by: Arnd Bergmann <arnd@arndb.de>
cc: Herbert Xu <herbert@gondor.apana.org.au>
---

 net/rxrpc/ar-internal.h |    4 ++
 net/rxrpc/call_object.c |    4 +-
 net/rxrpc/insecure.c    |    5 ++
 net/rxrpc/rxkad.c       |  103 ++++++++++++++++++++++++++++++++++++++---------
 4 files changed, 96 insertions(+), 20 deletions(-)

diff --git a/net/rxrpc/ar-internal.h b/net/rxrpc/ar-internal.h
index 80335b4ee4fd..bea2a02850af 100644
--- a/net/rxrpc/ar-internal.h
+++ b/net/rxrpc/ar-internal.h
@@ -226,6 +226,9 @@ struct rxrpc_security {
 	int (*verify_packet)(struct rxrpc_call *, struct sk_buff *,
 			     unsigned int, unsigned int, rxrpc_seq_t, u16);
 
+	/* Free crypto request on a call */
+	void (*free_call_crypto)(struct rxrpc_call *);
+
 	/* Locate the data in a received packet that has been verified. */
 	void (*locate_data)(struct rxrpc_call *, struct sk_buff *,
 			    unsigned int *, unsigned int *);
@@ -557,6 +560,7 @@ struct rxrpc_call {
 	unsigned long		expect_term_by;	/* When we expect call termination by */
 	u32			next_rx_timo;	/* Timeout for next Rx packet (jif) */
 	u32			next_req_timo;	/* Timeout for next Rx request packet (jif) */
+	struct skcipher_request	*cipher_req;	/* Packet cipher request buffer */
 	struct timer_list	timer;		/* Combined event timer */
 	struct work_struct	processor;	/* Event processor */
 	rxrpc_notify_rx_t	notify_rx;	/* kernel service Rx notification function */
diff --git a/net/rxrpc/call_object.c b/net/rxrpc/call_object.c
index 217b12be9e08..60cbc81dc461 100644
--- a/net/rxrpc/call_object.c
+++ b/net/rxrpc/call_object.c
@@ -476,8 +476,10 @@ void rxrpc_release_call(struct rxrpc_sock *rx, struct rxrpc_call *call)
 
 	_debug("RELEASE CALL %p (%d CONN %p)", call, call->debug_id, conn);
 
-	if (conn)
+	if (conn) {
 		rxrpc_disconnect_call(call);
+		conn->security->free_call_crypto(call);
+	}
 
 	for (i = 0; i < RXRPC_RXTX_BUFF_SIZE; i++) {
 		rxrpc_free_skb(call->rxtx_buffer[i],
diff --git a/net/rxrpc/insecure.c b/net/rxrpc/insecure.c
index a29d26c273b5..f6c59f5fae9d 100644
--- a/net/rxrpc/insecure.c
+++ b/net/rxrpc/insecure.c
@@ -33,6 +33,10 @@ static int none_verify_packet(struct rxrpc_call *call, struct sk_buff *skb,
 	return 0;
 }
 
+static void none_free_call_crypto(struct rxrpc_call *call)
+{
+}
+
 static void none_locate_data(struct rxrpc_call *call, struct sk_buff *skb,
 			     unsigned int *_offset, unsigned int *_len)
 {
@@ -83,6 +87,7 @@ const struct rxrpc_security rxrpc_no_security = {
 	.exit				= none_exit,
 	.init_connection_security	= none_init_connection_security,
 	.prime_packet_security		= none_prime_packet_security,
+	.free_call_crypto		= none_free_call_crypto,
 	.secure_packet			= none_secure_packet,
 	.verify_packet			= none_verify_packet,
 	.locate_data			= none_locate_data,
diff --git a/net/rxrpc/rxkad.c b/net/rxrpc/rxkad.c
index ae8cd8926456..dbb109da1835 100644
--- a/net/rxrpc/rxkad.c
+++ b/net/rxrpc/rxkad.c
@@ -43,6 +43,7 @@ struct rxkad_level2_hdr {
  * packets
  */
 static struct crypto_sync_skcipher *rxkad_ci;
+static struct skcipher_request *rxkad_ci_req;
 static DEFINE_MUTEX(rxkad_ci_mutex);
 
 /*
@@ -99,8 +100,8 @@ static int rxkad_init_connection_security(struct rxrpc_connection *conn)
  */
 static int rxkad_prime_packet_security(struct rxrpc_connection *conn)
 {
+	struct skcipher_request *req;
 	struct rxrpc_key_token *token;
-	SYNC_SKCIPHER_REQUEST_ON_STACK(req, conn->cipher);
 	struct scatterlist sg;
 	struct rxrpc_crypt iv;
 	__be32 *tmpbuf;
@@ -115,6 +116,12 @@ static int rxkad_prime_packet_security(struct rxrpc_connection *conn)
 	if (!tmpbuf)
 		return -ENOMEM;
 
+	req = skcipher_request_alloc(&conn->cipher->base, GFP_NOFS);
+	if (!req) {
+		kfree(tmpbuf);
+		return -ENOMEM;
+	}
+
 	token = conn->params.key->payload.data[0];
 	memcpy(&iv, token->kad->session_key, sizeof(iv));
 
@@ -128,7 +135,7 @@ static int rxkad_prime_packet_security(struct rxrpc_connection *conn)
 	skcipher_request_set_callback(req, 0, NULL, NULL);
 	skcipher_request_set_crypt(req, &sg, &sg, tmpsize, iv.x);
 	crypto_skcipher_encrypt(req);
-	skcipher_request_zero(req);
+	skcipher_request_free(req);
 
 	memcpy(&conn->csum_iv, tmpbuf + 2, sizeof(conn->csum_iv));
 	kfree(tmpbuf);
@@ -136,6 +143,35 @@ static int rxkad_prime_packet_security(struct rxrpc_connection *conn)
 	return 0;
 }
 
+/*
+ * Allocate and prepare the crypto request on a call.  For any particular call,
+ * this is called serially for the packets, so no lock should be necessary.
+ */
+static struct skcipher_request *rxkad_get_call_crypto(struct rxrpc_call *call)
+{
+	struct crypto_skcipher *tfm = &call->conn->cipher->base;
+	struct skcipher_request	*cipher_req = call->cipher_req;
+
+	if (!cipher_req) {
+		cipher_req = skcipher_request_alloc(tfm, GFP_NOFS);
+		if (!cipher_req)
+			return NULL;
+		call->cipher_req = cipher_req;
+	}
+
+	return cipher_req;
+}
+
+/*
+ * Clean up the crypto on a call.
+ */
+static void rxkad_free_call_crypto(struct rxrpc_call *call)
+{
+	if (call->cipher_req)
+		skcipher_request_free(call->cipher_req);
+	call->cipher_req = NULL;
+}
+
 /*
  * partially encrypt a packet (level 1 security)
  */
@@ -246,7 +282,7 @@ static int rxkad_secure_packet(struct rxrpc_call *call,
 			       void *sechdr)
 {
 	struct rxrpc_skb_priv *sp;
-	SYNC_SKCIPHER_REQUEST_ON_STACK(req, call->conn->cipher);
+	struct skcipher_request	*req;
 	struct rxrpc_crypt iv;
 	struct scatterlist sg;
 	u32 x, y;
@@ -265,6 +301,10 @@ static int rxkad_secure_packet(struct rxrpc_call *call,
 	if (ret < 0)
 		return ret;
 
+	req = rxkad_get_call_crypto(call);
+	if (!req)
+		return -ENOMEM;
+
 	/* continue encrypting from where we left off */
 	memcpy(&iv, call->conn->csum_iv.x, sizeof(iv));
 
@@ -502,7 +542,7 @@ static int rxkad_verify_packet(struct rxrpc_call *call, struct sk_buff *skb,
 			       unsigned int offset, unsigned int len,
 			       rxrpc_seq_t seq, u16 expected_cksum)
 {
-	SYNC_SKCIPHER_REQUEST_ON_STACK(req, call->conn->cipher);
+	struct skcipher_request	*req;
 	struct rxrpc_crypt iv;
 	struct scatterlist sg;
 	bool aborted;
@@ -515,6 +555,10 @@ static int rxkad_verify_packet(struct rxrpc_call *call, struct sk_buff *skb,
 	if (!call->conn->cipher)
 		return 0;
 
+	req = rxkad_get_call_crypto(call);
+	if (!req)
+		return -ENOMEM;
+
 	/* continue encrypting from where we left off */
 	memcpy(&iv, call->conn->csum_iv.x, sizeof(iv));
 
@@ -747,14 +791,18 @@ static void rxkad_calc_response_checksum(struct rxkad_response *response)
 /*
  * encrypt the response packet
  */
-static void rxkad_encrypt_response(struct rxrpc_connection *conn,
-				   struct rxkad_response *resp,
-				   const struct rxkad_key *s2)
+static int rxkad_encrypt_response(struct rxrpc_connection *conn,
+				  struct rxkad_response *resp,
+				  const struct rxkad_key *s2)
 {
-	SYNC_SKCIPHER_REQUEST_ON_STACK(req, conn->cipher);
+	struct skcipher_request *req;
 	struct rxrpc_crypt iv;
 	struct scatterlist sg[1];
 
+	req = skcipher_request_alloc(&conn->cipher->base, GFP_NOFS);
+	if (!req)
+		return -ENOMEM;
+
 	/* continue encrypting from where we left off */
 	memcpy(&iv, s2->session_key, sizeof(iv));
 
@@ -764,7 +812,8 @@ static void rxkad_encrypt_response(struct rxrpc_connection *conn,
 	skcipher_request_set_callback(req, 0, NULL, NULL);
 	skcipher_request_set_crypt(req, sg, sg, sizeof(resp->encrypted), iv.x);
 	crypto_skcipher_encrypt(req);
-	skcipher_request_zero(req);
+	skcipher_request_free(req);
+	return 0;
 }
 
 /*
@@ -839,8 +888,9 @@ static int rxkad_respond_to_challenge(struct rxrpc_connection *conn,
 
 	/* calculate the response checksum and then do the encryption */
 	rxkad_calc_response_checksum(resp);
-	rxkad_encrypt_response(conn, resp, token->kad);
-	ret = rxkad_send_response(conn, &sp->hdr, resp, token->kad);
+	ret = rxkad_encrypt_response(conn, resp, token->kad);
+	if (ret == 0)
+		ret = rxkad_send_response(conn, &sp->hdr, resp, token->kad);
 	kfree(resp);
 	return ret;
 
@@ -1017,18 +1067,16 @@ static void rxkad_decrypt_response(struct rxrpc_connection *conn,
 				   struct rxkad_response *resp,
 				   const struct rxrpc_crypt *session_key)
 {
-	SYNC_SKCIPHER_REQUEST_ON_STACK(req, rxkad_ci);
+	struct skcipher_request *req = rxkad_ci_req;
 	struct scatterlist sg[1];
 	struct rxrpc_crypt iv;
 
 	_enter(",,%08x%08x",
 	       ntohl(session_key->n[0]), ntohl(session_key->n[1]));
 
-	ASSERT(rxkad_ci != NULL);
-
 	mutex_lock(&rxkad_ci_mutex);
 	if (crypto_sync_skcipher_setkey(rxkad_ci, session_key->x,
-				   sizeof(*session_key)) < 0)
+					sizeof(*session_key)) < 0)
 		BUG();
 
 	memcpy(&iv, session_key, sizeof(iv));
@@ -1222,10 +1270,26 @@ static void rxkad_clear(struct rxrpc_connection *conn)
  */
 static int rxkad_init(void)
 {
+	struct crypto_sync_skcipher *tfm;
+	struct skcipher_request *req;
+
 	/* pin the cipher we need so that the crypto layer doesn't invoke
 	 * keventd to go get it */
-	rxkad_ci = crypto_alloc_sync_skcipher("pcbc(fcrypt)", 0, 0);
-	return PTR_ERR_OR_ZERO(rxkad_ci);
+	tfm = crypto_alloc_sync_skcipher("pcbc(fcrypt)", 0, 0);
+	if (IS_ERR(tfm))
+		return PTR_ERR(tfm);
+
+	req = skcipher_request_alloc(&tfm->base, GFP_KERNEL);
+	if (!req)
+		goto nomem_tfm;
+
+	rxkad_ci_req = req;
+	rxkad_ci = tfm;
+	return 0;
+
+nomem_tfm:
+	crypto_free_sync_skcipher(tfm);
+	return -ENOMEM;
 }
 
 /*
@@ -1233,8 +1297,8 @@ static int rxkad_init(void)
  */
 static void rxkad_exit(void)
 {
-	if (rxkad_ci)
-		crypto_free_sync_skcipher(rxkad_ci);
+	crypto_free_sync_skcipher(rxkad_ci);
+	skcipher_request_free(rxkad_ci_req);
 }
 
 /*
@@ -1249,6 +1313,7 @@ const struct rxrpc_security rxkad = {
 	.prime_packet_security		= rxkad_prime_packet_security,
 	.secure_packet			= rxkad_secure_packet,
 	.verify_packet			= rxkad_verify_packet,
+	.free_call_crypto		= rxkad_free_call_crypto,
 	.locate_data			= rxkad_locate_data,
 	.issue_challenge		= rxkad_issue_challenge,
 	.respond_to_challenge		= rxkad_respond_to_challenge,

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/156449861697.10315.4666924841804740487.stgit%40warthog.procyon.org.uk.
