Return-Path: <clang-built-linux+bncBC27X66SWQMBBTOTVX7QKGQESZ7HTVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FA42E72C2
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 18:39:26 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id l20sf6008913ioc.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 09:39:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609263565; cv=pass;
        d=google.com; s=arc-20160816;
        b=wLfx7M2yNBCHnUTQ9fYI2Dj0+QBJf1dDWmYZStoejYY9XEwcfx3VHN54vCv4kLK7JR
         EYVDhQmuEIFRvKxuKfQ8qzd43fT3G7Nw3jHBlf2u0Luf+w/h5KUMtw3sdOGc4DoubdpX
         Z7DidLfqsLQz/2Tn7nfzLs/lBr6MhU9478AyP2hXFFLvTmgvIdEDx4hBgENRFawxAIbW
         EFWEKRWhDAdMrjm67N5ErcIPbG5bsBqD6gmjLuQr75wctprEgTcQw7R3TKnTxgF+Xf7l
         WjwaQStShoeIR9jgV54C16rlBNFBIK7RlvSxE9gRGYykYV6SOj+2LiN48KmJDvmwKh+j
         /IWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=2nNEc5FNcE4qTNM2E5oJbBMoB5YQd71KiVlclKHNRYA=;
        b=k8UIxqQgmmwSHep7Tz5SHvexNmAWEfucoaoScfapl+XrA/r1zY0fgsmNTpAElfj/99
         wFayZQgXDeOIBPOoza2we1nxvZvF6/+AO8jUw89WCC4JxrD0a+Tmgsq61T2teC8eJvBN
         uNBGLQQQypAOBOKgHtbn3R/LKwBnlmZmRBuYzDcwEQxWZH8ncuMZgqYzCWGOYfxWjmIG
         9GM3mrUx3eAU2ZjVsLOEQDK21XmLZdInjTULvn1XXUlN9/xDtnaKhKoHRhkGKwFZHF0p
         7OvfR4999qmz47y0w7OeCnHV4jJvOXgdRSvCm7dYv3ebLhw2DUjiUNEbFoNnsvd63J1F
         87Rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EMMK7I2x;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2nNEc5FNcE4qTNM2E5oJbBMoB5YQd71KiVlclKHNRYA=;
        b=KDC8aD0aUry61S+Rzfla7DgOdpBiTMlKA6iTQFWnxnoNpY/5GuU+Bekh/NgKpUFsOg
         58z9UNKbbszKIruxOIuaIr3tOjfm0v2kZ1Ea2S3ncAUGKsILy5AMpavngDkmxfVF7XqU
         PGTM3sUmPunW7F1ST3EoZ5D4SGLjV6TcmMRTUJgJMO6uCP9PgtJDmoNKOPyy93Xv48ty
         tVrEu9EEszgX2DdKJjv0445JNEWsXJ75Tq8Mf4IFhnhOVZ9FbKjhYbQUTF0a/FkibRmh
         7fDPEDPrCkw5VqcCWPPHX+JVI5PJ4yVzBUxiqCfIECGqQQOGrhVEGhaTnjFnvXsL1kTS
         dyrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2nNEc5FNcE4qTNM2E5oJbBMoB5YQd71KiVlclKHNRYA=;
        b=HLj8pUPbdo4TMsR0zueJK4lGySWqccLrxDhh/UxV9KEvPUjdHFeAjKorXR6ev6fJoA
         8cOlZfepFwfxPP8/suXgfmoT++Sek6jNZ4OlpPrcdnSoC+TqJjeZ+lXDzBeza3gB6/3p
         Y7j3c6viM4UjEIaaEHs3ANT/4yuPZxb6IsKIx1lFtEcfuatcYxjq+H39+N3JItB1dkZU
         vl7Cu/wB9lnxwxUjzZ602+iMfLTHkmXB49G5OVYYr20XBM5UzVGxdO5+aSY7fZIdykDS
         XlsX4WipVIHqbzGdDGvKDnHO/dnw0HZc2d/sdMCKrS5+QA/PeTgdmEFPcqdcbsCe+Oek
         BBSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530nN8r/mlZprFaqas5yifTfukOct+8hsS2Cxfq6JRyDU6w8XwQj
	/1CtXxdCHPAQwTeoXRJ3j04=
X-Google-Smtp-Source: ABdhPJwYVSkY7rEFDwznf8GGnhEKFmgG48gOhoHnWXywqKL2FXx/shMBSHAD52oejLza7GTV53AiTw==
X-Received: by 2002:a6b:784d:: with SMTP id h13mr40498904iop.26.1609263565604;
        Tue, 29 Dec 2020 09:39:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ca09:: with SMTP id j9ls1464382ils.11.gmail; Tue, 29 Dec
 2020 09:39:25 -0800 (PST)
X-Received: by 2002:a92:9e1d:: with SMTP id q29mr19502240ili.289.1609263565193;
        Tue, 29 Dec 2020 09:39:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609263565; cv=none;
        d=google.com; s=arc-20160816;
        b=Fp8TnNHWAyngvtL6mD3puMwsW4SQi9x4Nk7V+5XVvAe3GXEqhL0DrpEp6YdN8SEoCl
         q662SBBqZVtqL7uftirwPx3ZZ+MW/68WZfvgNs2CLkl7zEwIGFkTxx2o6/8HxGh29FWQ
         XG/6hznX9GMop9zOKKmij76NbCQu4nRwvdUEbe8HBgJxLv/yVUCSMeIA3UgowHy3muzW
         pt85g46k+rjxB7vDBXopSsscGLrkS7zGCvhx7dVvNlFZI8UCjhZ97wmvfLa5mHNa2njy
         +VmZFrf4cmZMDUXQ5seyOsxy2gu/FyJaBaauyBonjS1/ARKQRkBpPlIXsAHdfglKkeos
         5CfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=0N2HePoQRmdLA5K1yApdE8rhkgViaY5rXeLPZJah4TQ=;
        b=p4GCkBrA8CHa29xmbTAANYX4q8h7JaiZBH9hqvW9lpfwUB6Q96tiN+4IJn4gUeY20o
         eKtNZQ94mdsbVV8eiVT8oxSn9D3Tb0wBitqliHCXs7fk48jgSfVHLzC0+lGCkk+3+wUa
         2tL6k6vozgfyRfFZ3hVz2rOhKZpMAVeyrXcgTsnh8ZUQneNDejlmUW0QmlOTzS/2Uyhh
         CLR3MGx0qMWgPiGnkVuL2cJTdbFJOs6YmeXhD7+4aONlNl1+TpZhRRxLfq/Rv/dU0/Mz
         WSsnmOmAc6vw0lwvYY7Q0ae0TwGGdPje3F4iNqrNCOC1J/Tr2LMDD3pUgbilrXNaRc0L
         NHcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EMMK7I2x;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id k131si2568072iof.1.2020.12.29.09.39.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Dec 2020 09:39:24 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com
 [209.85.167.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-81-f8ZYjKKAN5OGlAEkcmOVBQ-1; Tue, 29 Dec 2020 12:39:22 -0500
X-MC-Unique: f8ZYjKKAN5OGlAEkcmOVBQ-1
Received: by mail-oi1-f197.google.com with SMTP id j25so8952854oie.12
        for <clang-built-linux@googlegroups.com>; Tue, 29 Dec 2020 09:39:22 -0800 (PST)
X-Received: by 2002:a4a:c4c7:: with SMTP id g7mr34109288ooq.50.1609263562111;
        Tue, 29 Dec 2020 09:39:22 -0800 (PST)
X-Received: by 2002:a4a:c4c7:: with SMTP id g7mr34109277ooq.50.1609263561902;
        Tue, 29 Dec 2020 09:39:21 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id s26sm9997234otd.8.2020.12.29.09.39.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Dec 2020 09:39:21 -0800 (PST)
From: trix@redhat.com
To: dhowells@redhat.com,
	davem@davemloft.net,
	kuba@kernel.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com
Cc: linux-afs@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] rxrpc: fix handling of an unsupported token type in rxrpc_read()
Date: Tue, 29 Dec 2020 09:39:16 -0800
Message-Id: <20201229173916.1459499-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=EMMK7I2x;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Tom Rix <trix@redhat.com>

clang static analysis reports this problem

net/rxrpc/key.c:657:11: warning: Assigned value is garbage or undefined
                toksize = toksizes[tok++];
                        ^ ~~~~~~~~~~~~~~~

rxrpc_read() contains two loops.  The first loop calculates the token
sizes and stores the results in toksizes[] and the second one uses the
array.  When there is an error in identifying the token in the first
loop, the token is skipped, no change is made to the toksizes[] array.
When the same error happens in the second loop, the token is not
skipped.  This will cause the toksizes[] array to be out of step and
will overrun past the calculated sizes.

Change the error handling in the second loop to be consistent with
the first.  Simplify the error handling to an if check.

Fixes: 9a059cd5ca7d ("rxrpc: Downgrade the BUG() for unsupported token type in rxrpc_read()")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 net/rxrpc/key.c | 48 ++++++++++++++++++++++--------------------------
 1 file changed, 22 insertions(+), 26 deletions(-)

diff --git a/net/rxrpc/key.c b/net/rxrpc/key.c
index 9631aa8543b5..eea877ee6ab3 100644
--- a/net/rxrpc/key.c
+++ b/net/rxrpc/key.c
@@ -587,20 +587,19 @@ static long rxrpc_read(const struct key *key,
 	for (token = key->payload.data[0]; token; token = token->next) {
 		toksize = 4;	/* sec index */
 
-		switch (token->security_index) {
-		case RXRPC_SECURITY_RXKAD:
-			toksize += 8 * 4;	/* viceid, kvno, key*2, begin,
-						 * end, primary, tktlen */
-			if (!token->no_leak_key)
-				toksize += RND(token->kad->ticket_len);
-			break;
-
-		default: /* we have a ticket we can't encode */
+		if (token->security_index != RXRPC_SECURITY_RXKAD) {
+			/* we have a ticket we can't encode */
 			pr_err("Unsupported key token type (%u)\n",
 			       token->security_index);
 			continue;
 		}
 
+		/* viceid, kvno, key*2, begin, end, primary, tktlen */
+		toksize += 8 * 4;
+
+		if (!token->no_leak_key)
+			toksize += RND(token->kad->ticket_len);
+
 		_debug("token[%u]: toksize=%u", ntoks, toksize);
 		ASSERTCMP(toksize, <=, AFSTOKEN_LENGTH_MAX);
 
@@ -654,28 +653,25 @@ static long rxrpc_read(const struct key *key,
 
 	tok = 0;
 	for (token = key->payload.data[0]; token; token = token->next) {
+		/* error reported above */
+		if (token->security_index != RXRPC_SECURITY_RXKAD)
+			continue;
+
 		toksize = toksizes[tok++];
 		ENCODE(toksize);
 		oldxdr = xdr;
 		ENCODE(token->security_index);
 
-		switch (token->security_index) {
-		case RXRPC_SECURITY_RXKAD:
-			ENCODE(token->kad->vice_id);
-			ENCODE(token->kad->kvno);
-			ENCODE_BYTES(8, token->kad->session_key);
-			ENCODE(token->kad->start);
-			ENCODE(token->kad->expiry);
-			ENCODE(token->kad->primary_flag);
-			if (token->no_leak_key)
-				ENCODE(0);
-			else
-				ENCODE_DATA(token->kad->ticket_len, token->kad->ticket);
-			break;
-
-		default:
-			break;
-		}
+		ENCODE(token->kad->vice_id);
+		ENCODE(token->kad->kvno);
+		ENCODE_BYTES(8, token->kad->session_key);
+		ENCODE(token->kad->start);
+		ENCODE(token->kad->expiry);
+		ENCODE(token->kad->primary_flag);
+		if (token->no_leak_key)
+			ENCODE(0);
+		else
+			ENCODE_DATA(token->kad->ticket_len, token->kad->ticket);
 
 		ASSERTCMP((unsigned long)xdr - (unsigned long)oldxdr, ==,
 			  toksize);
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201229173916.1459499-1-trix%40redhat.com.
