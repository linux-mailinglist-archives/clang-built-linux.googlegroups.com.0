Return-Path: <clang-built-linux+bncBD2IBN4NQIERBWPH3XWQKGQE7ENHMDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id AE023E7CA8
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 00:03:53 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id t27sf1177275lfk.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 16:03:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572303833; cv=pass;
        d=google.com; s=arc-20160816;
        b=yE5ZUqCCEavVKIiDzaub9qtFJwy1jOaJDwaKidJW34OLCLrEuZVbxmspHBGGGlYbCR
         Gq4sloI8sbJ7tzCCjP2/HgJ5RmPhnoKcZtd2DjhUQzlMzd3KM0oKubN8cq2sRW5Mjeg1
         Xxs1YrsPaAEl8FGvoO6971SiH7E2u7uZIGJJ70kkBUlp1FfZfDRjR52KnEISqyHsGHgI
         VPUNkcVfZMTVCpxcYoKYHmrKSOq9yr8P4le/JQWsPYqcpOBYoDsTCgkb3QQY9GqzshVJ
         Lfo8y/92GxBGKa3ZqkTCt6JJESdbr4Xn0gbJmnmXivRUk+qXLZPnju0D2kkhhNJjqqNN
         2yRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=8ORis+HFiu3P7nezOEfhQeMBjkv2I+mx0ZHpgR8c9Rk=;
        b=WyW8LYrQqxoPtyl+6lrio1GBqmRP0lBD7vpEp9uKjlE+gSkEIhLkKNKzNQD5sPVq6E
         0sjppZY3lRXjJbpTZNF4nc540fVqL/Jm2F6m3UlkHOdOwRTKD4njn+A0b3F3j8wHOMYE
         ph2yE+8T5F80I4h5uYfIlNKVsWmfOvyUbRjkltXGK+8rZm+UjyMBcyUWMIINA09x4A95
         mwa+OCOIg/D7QEJtf1yRVB711+Mst5f91mg2m5fw0sQIHFH2Txg4Qcy42fcH85gy0az9
         M+N7w+yH1Ou3xAH5gUVh7jn69GKiEv4OeNp2TsepHHrEZxsSAe0f+cSBLRS8yqRNQfVK
         ZOCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qGUuw+M4;
       spf=pass (google.com: domain of luc.vanoostenryck@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=luc.vanoostenryck@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8ORis+HFiu3P7nezOEfhQeMBjkv2I+mx0ZHpgR8c9Rk=;
        b=Iq5/r/iMSV+zL8JynHptcJmBBo5VbjUi0+vD5XFyDG0e/8vKycMaNUgVBiP76I5hvs
         uu+Uuq4a3gkMJy1Zo2M7KBmDK+P+aPfm9fGp2n5GNu/ejQdGgz5fcrFLb4Vrm0ayOxKu
         ew+KYliVFlbmlTb4UP5sHHDeAXX1jmLGMLFf2K14hetQg3MJVK3QmIcwFqE9jBmjP/9L
         pn6LnvD7K/PeWCXfx3nx14Pm9M3haArRTDh7EZfcigvrL9vCWPvFHu1A1sOcBtwYvzjy
         XhYsiObF3D1Jlisn+TrJ3nXJuVhUlRjvSdmgCfY4lXgYmiqTddCPdP0OtLqsmeMgDvjF
         C3QA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8ORis+HFiu3P7nezOEfhQeMBjkv2I+mx0ZHpgR8c9Rk=;
        b=KjsJd+azdt8TWVZfrxU6lrZ2qN/ExWW6OnpjazP6nYjnd2vw+AvnAte/Ja9Z8W6oSG
         LPcFXHCu35AuM199zJuuF1cQsWxsJ8AZxgncIso79UIBwoFuMZe0WnkqawVz0gbukiX1
         P4mREWCqRkiKO1gytt18fhJumnD7rp7bt6cKGxqCOrQRLiJi4igCo2cCtLw3yu/YBfHl
         NHOXX1mjQ4FENcl3ewBVdOIOeetwY0B+tHQhjrS49x44TLUJtTcy79E+yE3lZCa0Dz6h
         /2WCWunMVjVe61a4OBVycsZdEnclovhK9Eh4rBiq7mmeXY/j2AGvU66G4UfHyeLNMu/4
         5P9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8ORis+HFiu3P7nezOEfhQeMBjkv2I+mx0ZHpgR8c9Rk=;
        b=lrkgXw6viaVmYhD9B0wBF6jkyHsW1G0vJ5LxcTOn+/CtVteLEnYAAC9g+WhTmticba
         uQKZwVs4Mq96Ebg9d7ODGVMZd5emB4xEiMlHMNl2zm4RyNzJMkTCqGy3IzFN2wAENK6F
         PQij170cNfa5U0ouInPgoesq2rNHCMjmeOwSO6IcDzemGgqowMLXs3EbWwrw1YIm86Wm
         Jd21FYQXlBaGdrTJf2BHPg0cZbVW3NZeNgCEqyMbszG3fL0s1Tjc4pzOlHDN0wIbSlvp
         UR9wr5qbI5Z78E5qEQduJMYMetc9Jx1FXoUSSvJAEdxIYvOn6r6cwRcWHks1Aq6njmBB
         ir6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUETqmZOVj3OYH5GytHk5cZle/H+SJ1grbbJloJAKcrVspvyT9Q
	oEektU+DW3pelpviEpmkYLU=
X-Google-Smtp-Source: APXvYqx5RPW8M/0dYBQwla9u1ILbk2RY4i+XVkIifsqQHtqh0r1hoLvydlWzKJq3rZ4DcOqcX7OLqA==
X-Received: by 2002:a05:651c:120c:: with SMTP id i12mr154910lja.123.1572303833198;
        Mon, 28 Oct 2019 16:03:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8806:: with SMTP id x6ls2793720ljh.11.gmail; Mon, 28 Oct
 2019 16:03:52 -0700 (PDT)
X-Received: by 2002:a2e:3612:: with SMTP id d18mr182823lja.222.1572303832553;
        Mon, 28 Oct 2019 16:03:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572303832; cv=none;
        d=google.com; s=arc-20160816;
        b=MgW6fBGfARYv6SgUIC3nx3maiAJXPL3GABvwlyB8v05IOu+naKaEl2K5Ljss5/iIg1
         TuqkbwVT0HCN2kxQNUM8Bt+LgD2sjS1DWGBu+CDyM30eZoW1BCCQm88PjcglwKPckOIK
         sulMTPcKbXXEHqbZXmUeD3cl9PTDiOvvbnrX5rVpOIRjzTyDNWoc6+x1Jfkum8XA8ubx
         WmnjiJJd42Xhuck7mAlFizdqsjlIosdmF31qKYkhDDxNbdK9t958VE7CSA0eNEUWVi5J
         nyg+dn8LkeDtZ6EOocQtNhWN3mZw6beRfmRi2VaK1IeJ7WCerpLeS135xEA15wiODNhf
         AdSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6kOh9lI6YWchLWC+l1b8QT9L947fcvZOAFfSe858fBU=;
        b=AGXVi5/IdgQkAOxKIZOSaxsj4fsefxZRXa5SG8pxjptfvByC/Zv35Qcub8s6ez3TAi
         OYHLVZeXtk9+WKYUmx0mHcM4oid9F4YKfw6gvcvNbtkn33lyjzmLK6YGXS0JBmlWHnWT
         MsD/mSv8MIecvBGnhrmhPHqznTE7dDbMGPgSc4rvEn7rTCuIrUY9XmQRHTPgQniHW6n1
         6qAj+wL5wIKj8ReYSfNlfgVGVxouIqBQ7bd/fk9MUQifzh+c2ytcnwUqs3Cqh5C0T7w6
         3JvAlmhvMbNeuiWVaM6FfPejwIYZBfyo5sic6LadEa3b6Ks8SpglfNbq+yCOKpg901VG
         p10w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qGUuw+M4;
       spf=pass (google.com: domain of luc.vanoostenryck@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=luc.vanoostenryck@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id o30si558282lfi.0.2019.10.28.16.03.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 16:03:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of luc.vanoostenryck@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id 22so586967wms.3
        for <clang-built-linux@googlegroups.com>; Mon, 28 Oct 2019 16:03:52 -0700 (PDT)
X-Received: by 2002:a7b:ce0c:: with SMTP id m12mr1382807wmc.117.1572303831985;
        Mon, 28 Oct 2019 16:03:51 -0700 (PDT)
Received: from desk.local ([2a02:a03f:40ac:ce00:6dcd:e18f:2cd1:7611])
        by smtp.gmail.com with ESMTPSA id l4sm14504010wrf.46.2019.10.28.16.03.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2019 16:03:51 -0700 (PDT)
Date: Tue, 29 Oct 2019 00:03:50 +0100
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Joe Perches <joe@perches.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	linux-sparse@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] compiler*.h: Add '__' prefix and suffix to all
 __attribute__ #defines
Message-ID: <20191028230349.xlhm42ripxktx43y@desk.local>
References: <7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel@perches.com>
 <CANiq72=B6XKwfkC9L4=+OxWtjxCp-94TWRG1a=pC=y636gzckA@mail.gmail.com>
 <19fd23e98bab65a1ee624445193bd2ed86108881.camel@perches.com>
 <20191028221523.vlzdk6dkcglxei6v@desk.local>
 <00c5ef125a4e62f538de7ddddc9d8fe7085794a3.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <00c5ef125a4e62f538de7ddddc9d8fe7085794a3.camel@perches.com>
User-Agent: NeoMutt/20180716
X-Original-Sender: luc.vanoostenryck@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qGUuw+M4;       spf=pass
 (google.com: domain of luc.vanoostenryck@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=luc.vanoostenryck@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Oct 28, 2019 at 03:28:17PM -0700, Joe Perches wrote:
> On Mon, 2019-10-28 at 23:15 +0100, Luc Van Oostenryck wrote:
> > On Mon, Oct 28, 2019 at 10:59:47AM -0700, Joe Perches wrote:
> > > On Mon, 2019-10-28 at 18:37 +0100, Miguel Ojeda wrote:
> > > > Just in case: for these ones (i.e. __CHECKER__), did you check if
> > > > sparse handles this syntax? (I don't recall myself if it does).
> > > > 
> > > > Other than that, thanks for the cleanup too! I can pick it up in the
> > > > the compiler-attributes tree and put it in -next.
> > > 
> > > Thanks for asking and no, I did  not until just now.
> > > Turns out sparse does _not_ handle these changes and
> > > the checking fails for these __<changes>__.
> > > 
> > > sparse would have to update parse.c or the __CHECKER__
> > > changes would need to be reverted.
> > > 
> > > Perhaps update parse.c like:
> > 
> > ...
> > 
> > Yes, this was missing. Thanks.
> > Can I have your SoB for this?
> 
> I'm not sure this actually works as there's
> some possible sparse parsing changes in the
> use of __context__.

Yes, indeed. The following shoud be squashed on top of
your patch (not tested yet on linux side):

-- Luc

diff --git a/parse.c b/parse.c
index 4464e2667..4b0a1566c 100644
--- a/parse.c
+++ b/parse.c
@@ -345,6 +345,7 @@ static struct symbol_op goto_op = {
 
 static struct symbol_op __context___op = {
 	.statement = parse_context_statement,
+	.attribute = attribute_context,
 };
 
 static struct symbol_op range_op = {
@@ -537,6 +538,7 @@ static struct init_keyword {
 	{ "while",	NS_KEYWORD, .op = &while_op },
 	{ "do",		NS_KEYWORD, .op = &do_op },
 	{ "goto",	NS_KEYWORD, .op = &goto_op },
+	{ "context",	NS_KEYWORD, .op = &context_op },
 	{ "__context__",NS_KEYWORD, .op = &__context___op },
 	{ "__range__",	NS_KEYWORD, .op = &range_op },
 	{ "asm",	NS_KEYWORD, .op = &asm_op },
@@ -560,8 +562,6 @@ static struct init_keyword {
 	{ "__bitwise__",NS_KEYWORD,	MOD_BITWISE,	.op = &attr_bitwise_op },
 	{ "address_space",NS_KEYWORD,	.op = &address_space_op },
 	{ "__address_space__",NS_KEYWORD,	.op = &address_space_op },
-	{ "context",	NS_KEYWORD,	.op = &context_op },
-	{ "__context__",NS_KEYWORD,	.op = &context_op },
 	{ "designated_init",	NS_KEYWORD,	.op = &designated_init_op },
 	{ "__designated_init__",	NS_KEYWORD,	.op = &designated_init_op },
 	{ "transparent_union",	NS_KEYWORD,	.op = &transparent_union_op },

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191028230349.xlhm42ripxktx43y%40desk.local.
