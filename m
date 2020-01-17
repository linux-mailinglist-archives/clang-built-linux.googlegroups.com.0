Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB3HQQ3YQKGQE2LFJQKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id AF522140AD7
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 14:36:45 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id a6sf15302741qkl.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 05:36:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579268204; cv=pass;
        d=google.com; s=arc-20160816;
        b=VlTEriO8QVdtFgSlgMt3n92cfVdk5XGqRmG2OQKURIc9/QFe2+X/FFGiGhG/RgbBwb
         8/okpdYmZYSY1HhGSceQY5QVx1bGeK4KY4W1W0YV+c1D/x04ucPpIdGH68UKELQnOZ2Y
         +3n75eQ+pgqspKmwWkLAjlUwj9KpdxFoWE7TiYPXHMoD8vBlwUIQieB1ZweY6cWGmp1x
         rHuNz1vWiMQ6acNdMdbjR9C0VrGoWfsaI0txguXZXrV300uVCj0IYDlYqHRuPyPQOUSl
         6WLllnKYrWSyzQUFajzuws7+yw4bxj3OnZ4mP5UxQp0+RTABGdIucygrOfVRGjc2Jdg0
         LnSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=Ui7tQrL0GhlAS06AssRwmDxwG8Q6rbyzLmJEPbM6dIg=;
        b=Vdu1E912B9kFEROT71Gr3rf/wnEoR29iQmNEvHA0sMmGy0jwvz04CGoet9P1PaDP7Z
         CCXnRyjUSJXgeTUVPsEUPfLOOyJZ1F5TS9zVt15cvmy/JiLU4jikxLv3MRFRGWv60NoY
         ev8eejx3gYGOqs/Thgv5PLcsSqlOIJS5ZNPMy3knVmKwY8YPdjSZl6hV0DiByWVGKU/E
         Qb473X+3upUMG8PynWdTFoMrAXL1PX67sJ6OhFTt5echvzMjPaeT7Vgz+Eko7FxzV30e
         IiuSoodnwpX+Gd48c3aUvWtkXpb5TU9vRwEkaFqXKAG0Sw7Ktr6HF0XCv+mWBK7HsLvU
         KCaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NIhSU8F3;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ui7tQrL0GhlAS06AssRwmDxwG8Q6rbyzLmJEPbM6dIg=;
        b=A/k34kDWThHtFZ9w510CoHh9+u5hY2uFB1OgAU+MfVj3UI2jWWH0WFAKtOJ/PDMY/3
         bFG5UCtLUGmRbwM63J35FN3Rnc7HolviXRQoNqGYNFJx0Exa1x4iQln5idn+69PP3uxW
         L/4yVWTSPZS3aebCMnidcMpaGB6WbTaFS9KVPXsSXMCV6HI+ptmyEnhzqkklkF+fvSe0
         mzGWeCRiFhoAyABTtDGLiK5hVQhl8hgg0ifQkzzur54UwJA2PuaMy1NzwREc77TA0TGV
         CSwTfJmH7GAqxNzGntXGxiQ6HJOWyuRbM9XjcnLV3xTRWWfTfiXwLIkMwkkeB78D1l7y
         J33g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ui7tQrL0GhlAS06AssRwmDxwG8Q6rbyzLmJEPbM6dIg=;
        b=lNPmlnlZ/1I1nEotk6ccaUmyMlurcvVQdZbeIYRruk5hzPssbUtmn2KXYEPuK2Ucwt
         RQiJ2eaTJD+i2Qqd1f+8Bs5EtUYMVp2lU9fgU6bMiEgM4Ki7CS3bACKEjUl0yx98WIOt
         MqSkvQrHhWgeN25xN+0qo+Zi9SzBQxKdt6EarZGUGHkhfJ9gO9CLt5dpUMCMXNcwX2xD
         QIG+ozoKKmpm33F3TkE5ZmxnKyceVfyobcdDs6SYG0c4MjW0NOFi/LsO4jVvD7yaEzxi
         nACGq6zndWW5Ald5flyqFtKGmkRpx5hFHq68pyG3qWy4OhGj8uwd8LK7tSvjIKT3lE04
         QGtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUVtIprRh3yZrMIH7v++UI7aRwQ/J9gBll17yHgSxiUhDge5anH
	sUkeN7hvVOQBrG+oihhGHl8=
X-Google-Smtp-Source: APXvYqz9npKhKJaI4zbeu0BIsxu4QfWKzqKwEsJhAZkuMq6I3n+Zss5QIkdpvWSsktchG9l56SgrcA==
X-Received: by 2002:a05:6214:11a8:: with SMTP id u8mr7715975qvv.16.1579268204659;
        Fri, 17 Jan 2020 05:36:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:49:: with SMTP id t9ls6725928qkt.6.gmail; Fri, 17
 Jan 2020 05:36:44 -0800 (PST)
X-Received: by 2002:a05:620a:8d7:: with SMTP id z23mr35436879qkz.15.1579268203341;
        Fri, 17 Jan 2020 05:36:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579268203; cv=none;
        d=google.com; s=arc-20160816;
        b=hNb5E6oCD7+Qy75oqW9MKLhbRa9+Dva0KOgdNIa8V8RVFG5BiaRJVeBMdTTnELKPbB
         mIOIrJwUnnCVApaf0avDj/OsWn1u2WNKPgm2WM7CuTFKvUD0umpEP5vRhDG1vaqX/Tpr
         k0059wLut4ZcvFKY/+23xvV4LAJb72iNcVmDXZNlbrsZbwjintFZgKCcsBwWPzuf8Pqs
         QNgxfQ7p9lx+DryAg78Woz5teogBTHQl1VZuvPjD2JY3rBh00Wqm77PjFJnxqHX9EJID
         CRofotEavfu6IoXso6FbsMMmg4F5EQTRnhwJiDE1zBTreGwlNW0nh6FMxVs4u38TAsrH
         5RXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=QtXWgYL/Jbfe74Yfrye2aGf4SllA3gGqdtfnCKKZXUw=;
        b=QfpOc09mNwjB+n910drBhm9mBNIQUs/kk2Sg6UmYPgmQO6qUHRBDt4KUhrXcJauicO
         wdPCQPdxHeT1XAEAhN4cYSyfwomk+j8I/742uXiNAb34NmjjDkQWd1iyGxsdgswjxEmW
         V+PbnEqWGkLz3gPAgjb2mMvzP4s/w7jBTwp/Z7nySx7a6agR15etyEqd5B8Cr/lMidlu
         Rxbrjicms89AeF1nCMNLQO8F0QKbTR61tZVf2Ohjgs4Y/WoY/L+BoJQtsB2BryoJKa99
         XGK5v6ha0jR7H0IHrwrTGnA1BXxGKH+y7Q3QuG/FkhWWUb4eSoWkm/EfNO3LlGAwY9Ur
         rGNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NIhSU8F3;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id g23si1182701qki.4.2020.01.17.05.36.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jan 2020 05:36:43 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-368-iSoN2J0gPMeJEy-89RP9hA-1; Fri, 17 Jan 2020 08:36:41 -0500
Received: by mail-lf1-f71.google.com with SMTP id a11so4359665lff.12
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jan 2020 05:36:41 -0800 (PST)
X-Received: by 2002:a2e:3504:: with SMTP id z4mr5730191ljz.273.1579268199887;
        Fri, 17 Jan 2020 05:36:39 -0800 (PST)
X-Received: by 2002:a2e:3504:: with SMTP id z4mr5730180ljz.273.1579268199696;
        Fri, 17 Jan 2020 05:36:39 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id w1sm11999480lfe.96.2020.01.17.05.36.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2020 05:36:39 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 317BF1804D7; Fri, 17 Jan 2020 14:36:38 +0100 (CET)
Subject: [PATCH bpf-next v4 01/10] samples/bpf: Don't try to remove user's
 homedir on clean
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Alexei Starovoitov <ast@kernel.org>
Cc: Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <brouer@redhat.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, bpf@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com
Date: Fri, 17 Jan 2020 14:36:38 +0100
Message-ID: <157926819814.1555735.13181807141455624178.stgit@toke.dk>
In-Reply-To: <157926819690.1555735.10756593211671752826.stgit@toke.dk>
References: <157926819690.1555735.10756593211671752826.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: iSoN2J0gPMeJEy-89RP9hA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=NIhSU8F3;
       spf=pass (google.com: domain of toke@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
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

From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>

The 'clean' rule in the samples/bpf Makefile tries to remove backup
files (ending in ~). However, if no such files exist, it will instead try
to remove the user's home directory. While the attempt is mostly harmless,
it does lead to a somewhat scary warning like this:

rm: cannot remove '~': Is a directory

Fix this by using find instead of shell expansion to locate any actual
backup files that need to be removed.

Fixes: b62a796c109c ("samples/bpf: allow make to be run from samples/bpf/ d=
irectory")
Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>
Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 samples/bpf/Makefile |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 5b89c0370f33..f86d713a17a5 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -254,7 +254,7 @@ all:
=20
 clean:
 	$(MAKE) -C ../../ M=3D$(CURDIR) clean
-	@rm -f *~
+	@find $(CURDIR) -type f -name '*~' -delete
=20
 $(LIBBPF): FORCE
 # Fix up variables inherited from Kbuild that tools/ build system won't li=
ke

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157926819814.1555735.13181807141455624178.stgit%40toke.dk=
.
