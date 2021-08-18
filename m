Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPGK6KEAMGQEVO7EWLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2213EFB90
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:21 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id p22-20020a5d8d160000b02905a150b13b20sf606589ioj.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267260; cv=pass;
        d=google.com; s=arc-20160816;
        b=0w4l2zVy0srBXfchIFWpmOZyWSOtho/1IJdHul5/9zextvZAIXjca4TgqHGqfGVMiK
         1OYHAOMF22BJ6ap0II95c2P77yiY9M/4XBOSxbQIVGLcVmcybuW2v6Z6q12EavwcNQdE
         /UVq7qY1Vg+6Am2r87DX4NauiW0YMOo7MMLa69qzPeHOfIvxr/euY1tVqXkg8OpUlgqk
         G1txhtxUd7fUkdbQaMYOEC2AvKOqVr680dseqPLfOQGGNWJHs2nXSuMetwBC7qjVDqTZ
         1tam4u+u0x85EBIiScS4lOnDf0aCj3LajNaKUEv62JdKdXUpur40C6+PVVVyOoNZGl1V
         964A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Msco4Z6wzu5UpuAElTTRT+9JfW6uDYt+t+NZTJx1CSA=;
        b=BTcLRSuJL9m3ahZ6MEXNUJhxycJtRlRwQzSyujccocTA8RtG+qds8N8gQDAxwGYpbs
         +XvQDfeqIW2zpl06RntzwAcUABIHC2ZyZPb70qt7U7F/vDPZJ/O9z7R06/bWrdlLQQ3r
         FutVGG4bQ/k8qPeLAxC9tGmFZYvaON8Rd1cnnKsDiQGtuAoJmxM5+OIN/QpCm9VFlMtl
         VDy74V/DWvWkxLsrbMyduhwG8Wn7tVTXBzvfor3fgv8Vsc4AmI4Jjr1jG86BKQrnKVIZ
         gcALU9oCVtxkfwO9YtuxjyX0cpS3KKmbcUD200iAorhsTeaMha+Wy+/urw3qZlOuWkta
         dqsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YS7HjPWI;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Msco4Z6wzu5UpuAElTTRT+9JfW6uDYt+t+NZTJx1CSA=;
        b=TBklI1+i6yY5L+0q/Mjcgho0fOX7UUXAO+SPeoZErIomyU677ycGAXigWBy4Bsp9dH
         xMWLvRIvFiTsL0Xu1gNyg34dLaJq3DcHobwXhwZVbmDSd45WdI2OXljA7xbq3MzUAsKH
         cX8tO96Rn30XSaaifI5LFNdSLv+VskfNaenm5XaWAzEQ9Q4XakY2zUYBfoKb+JML0oyk
         PJjrNjcIcrtzo3jA+hNkA+w8evcwjm+Z+tXW7hyH728aQOH/1rTGzXj12Mwlp5sAssgv
         OmKzsuCWqM8ZC/Po11fOXsr7rSDsK3lRi5tl61Kex6cEMXSLe88NoQRImK2u+0GSc/30
         0Vew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Msco4Z6wzu5UpuAElTTRT+9JfW6uDYt+t+NZTJx1CSA=;
        b=oumEor6BnMXo/Sc6FifLx1Q1VoSZaSbHwDLjxOuPh13/N7fRQ240uYG6PeIT64wwee
         XJim6AkHQZlKWlR8Nk4evP+Tr1ikMnc/cGS+eHwPp5RJY0Hd0LOkqbJ1dbdeo8baXEbc
         Gy9ZCDiqa1P7nG1kKAeOYyJp93fYb4PLuxqDhSZBBMTzV7w1Q6bR7tN3Bop+Cm3W8dkK
         4i1MG72Sz6Qoi0MlN1ESTncrBR4FL0XXmIrRPKQvcEBD8u8ZdbSJLVciOc31hk0CUdgN
         IF1V6W9l3qGYZzCdZ+Xyjsbgb6P+6zD/Eluyxxbx7Yk2Py8hILw2e6pZjYQmn2HZkIh3
         Wr4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533EZh7fDZmaLhmuhSjQ18q8Eh0BcOkCM4LBj8gd6Ot064yT3TkT
	TNsSqTR/NbDBreBRggBVZc0=
X-Google-Smtp-Source: ABdhPJzjxOHWCv8qnowp5HUTAtZBQFx3MzRBeu/XJkEJ+LRHQTRKTa+CQ1ZpJAJagtO1qcUfs1Pptw==
X-Received: by 2002:a92:dd0e:: with SMTP id n14mr4755412ilm.224.1629267260643;
        Tue, 17 Aug 2021 23:14:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:94ca:: with SMTP id y10ls204397ior.1.gmail; Tue, 17 Aug
 2021 23:14:20 -0700 (PDT)
X-Received: by 2002:a5d:9707:: with SMTP id h7mr6123873iol.28.1629267260317;
        Tue, 17 Aug 2021 23:14:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267260; cv=none;
        d=google.com; s=arc-20160816;
        b=Hh+WYWI/7nLCSZlXtD9Tk+f8+u6w1Ev6PenyrBie8APJomMhHNEMQKAzNvPz1D1IAh
         SjCQ7YfiGaz0EPEZePzWknsFe/moKxeQEMoxNh0UF1ttH+JJS3bsGuczUHeXOSBMmmuQ
         T4bhL0X72gBn+ZGQZ/gV1smS41xl94FeNajhtGhAR8YUCF0sGazHH9XdxeokKLdqhUwG
         dJo/rQS9BcIuiCrviPghhx9imtDIEZmq63pIezSDGgYi3GNYicEscZOThpKpvC2PE6Br
         YHeUcWei1ZrG9gBDwKkh5B+WW+kHIYom0jfICOijMABFgUBHHe6o2V4v6Hv6VSppOXSN
         fsyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6F2rp4AnP3NGeIGZ05xMXWJjpPIK4Jb97h13JojrAko=;
        b=iDwYCYXOjFeW56katwlXCAn3ZuuWOez9yJcDCyA98z01F99El1VeyOW7ANlaLrpVS7
         xeQVwVZ9XJ0TGCQkZ8lDHgsdfmX8xQhaAYJ842PlXtBn+4jj9+RUj919EPjuKZbWfJ5h
         MStjfNv46dpdainVC8BoJWpA1L6IUaX3Y9aE4cqBg60PNFBMlCh0EJutmzmDL0mxGyYn
         aPlNrQI5z3OoZVmcKwqkbilUSrCcwBO1i1NurMImB/NFoLIFsGcfhQNw8QxZkycF8/S8
         cXyLWmO3jqnv+cQOLwRP61/7NcHdd77J3p6cue3/Mg0J4YFCb2M3TDDGS0GmhSZ4Buws
         9vSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YS7HjPWI;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id z12si338794iox.0.2021.08.17.23.14.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Received: by mail-pf1-x42e.google.com with SMTP id j187so1080173pfg.4
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:20 -0700 (PDT)
X-Received: by 2002:a62:648c:0:b029:3e0:80dd:9b9e with SMTP id y134-20020a62648c0000b02903e080dd9b9emr7793195pfb.10.1629267260047;
        Tue, 17 Aug 2021 23:14:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q3sm5628541pgl.23.2021.08.17.23.14.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:19 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Potnuri Bharat Teja <bharat@chelsio.com>,
	Doug Ledford <dledford@redhat.com>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Raju Rangoju <rajur@chelsio.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-rdma@vger.kernel.org,
	netdev@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 46/63] iw_cxgb4: Use memset_startat() for cpl_t5_pass_accept_rpl
Date: Tue, 17 Aug 2021 23:05:16 -0700
Message-Id: <20210818060533.3569517-47-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2404; h=from:subject; bh=rquyWjDPJAfPxGH6VKiA2jIuZnWvLU6UgPqN/0FyQ/s=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMoZBU+AZTLPLboKA2tsHcUYnxXofUjzUeVV5jM TIxpyi+JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjKAAKCRCJcvTf3G3AJvHSD/ 44+6rU5jvReItNvFdWkzxvCu3Zfc98qUS6K5JULs74yaY9KObRjykrNvK0Am5wl91nOIUyOidTpbY8 gj5vdxz6Zn5qaupcsAyy9fMyJ/+o6OIVPQVkpg4q/1xaUe9XJBw7EuoHQ00xZOSITrFQxedJAa0OAv dDdUw2IJMSVp1BsKrqZ8zwnx6OGNmdcku1qJXAyXdUPATD3x8PsX1xW9/NxTPuIQTj7FklQQxnfOVi VM13p6OU2dfVTiA1MK0kBRp4tdKoR/yNDNbe6P8SBH4R+bXwe0CsulDmCc2+ySkpmoFz5Zs02RsCMW GqoOF37v9Un0rA9+BTw45+PmTWENIznqpoX86i1KrfPcRoQNLXy9z8wlq+eLzIvdRxFlRQ0KUXkX0f 0gvjYVFDNzhTQYMNABAPN1q4DUm5J4vXD2Na1e16bvF0v0fmgTDLw5ZjtW+s7lUQKEkjmMqeBNOT+Y xctphKqxjE0Q3GAfUhUMBlcKKfnVS0MkEPrQpdYePDhu92xpbEb1MR4J6wYY4kSlPNUtkpnSkccN1L /8vDJalPNghDaWw+eZU5YfymPY1LdOBA+9X5cVqUEglZUr356BU/Ynk+xpBRobnBRlejxkrHcHUA4g f+Tt4SJV/gbQboppXKrKMmuQZiynIRvgIxU13ahhCZLHHDEZKdsOOAbppgSQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=YS7HjPWI;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42e
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Use memset_startat() so memset() doesn't get confused about writing
beyond the destination member that is intended to be the starting point
of zeroing through the end of the struct. Additionally, since everything
appears to perform a roundup (including allocation), just change the
size of the struct itself and add a build-time check to validate the
expected size.

Cc: Potnuri Bharat Teja <bharat@chelsio.com>
Cc: Doug Ledford <dledford@redhat.com>
Cc: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Raju Rangoju <rajur@chelsio.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: linux-rdma@vger.kernel.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/infiniband/hw/cxgb4/cm.c            | 5 +++--
 drivers/net/ethernet/chelsio/cxgb4/t4_msg.h | 2 +-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/infiniband/hw/cxgb4/cm.c b/drivers/infiniband/hw/cxgb4/cm.c
index 291471d12197..6519ea8ebf23 100644
--- a/drivers/infiniband/hw/cxgb4/cm.c
+++ b/drivers/infiniband/hw/cxgb4/cm.c
@@ -2471,7 +2471,8 @@ static int accept_cr(struct c4iw_ep *ep, struct sk_buff *skb,
 	skb_get(skb);
 	rpl = cplhdr(skb);
 	if (!is_t4(adapter_type)) {
-		skb_trim(skb, roundup(sizeof(*rpl5), 16));
+		BUILD_BUG_ON(sizeof(*rpl5) != roundup(sizeof(*rpl5), 16));
+		skb_trim(skb, sizeof(*rpl5));
 		rpl5 = (void *)rpl;
 		INIT_TP_WR(rpl5, ep->hwtid);
 	} else {
@@ -2487,7 +2488,7 @@ static int accept_cr(struct c4iw_ep *ep, struct sk_buff *skb,
 		opt2 |= CONG_CNTRL_V(CONG_ALG_TAHOE);
 		opt2 |= T5_ISS_F;
 		rpl5 = (void *)rpl;
-		memset(&rpl5->iss, 0, roundup(sizeof(*rpl5)-sizeof(*rpl), 16));
+		memset_after(rpl5, 0, iss);
 		if (peer2peer)
 			isn += 4;
 		rpl5->iss = cpu_to_be32(isn);
diff --git a/drivers/net/ethernet/chelsio/cxgb4/t4_msg.h b/drivers/net/ethernet/chelsio/cxgb4/t4_msg.h
index fed5f93bf620..26433a62d7f0 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/t4_msg.h
+++ b/drivers/net/ethernet/chelsio/cxgb4/t4_msg.h
@@ -497,7 +497,7 @@ struct cpl_t5_pass_accept_rpl {
 	__be32 opt2;
 	__be64 opt0;
 	__be32 iss;
-	__be32 rsvd;
+	__be32 rsvd[3];
 };
 
 struct cpl_act_open_req {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-47-keescook%40chromium.org.
