Return-Path: <clang-built-linux+bncBDG4DXNHV4CRBLWJ2CJQMGQEPJ2YXGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F72051C8E9
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 21:25:35 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id g2-20020a0565123b8200b004725c7af360sf2052192lfv.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 12:25:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651778734; cv=pass;
        d=google.com; s=arc-20160816;
        b=FIPFzFpUlqhc6V49KpMo6h4WA5pa2BkVNxUDjF0Jyk1AnK6SzB1TEgqYh5jDG9sNVr
         oFZ4e9lNULdcpLRBIgbwRKgBTr2F6F0zkxtzvTDYCR1+GsDo3Xhb2E61Dkl7Fu7j7XJB
         hIWMqrHshkNa4SpI8fxn+vGqehXZufqImLJzRXH7vJL6DZWXMUcJ2gfyjbE26PHTMF1g
         /uC0NSAsu8kSqeKtsPlsUc3kNe7UOef/wSxh0jRE+1IKo/FhSHxNXzrEc5B2Z1d9TSFj
         cGCepiwR9RuPp5ohXaJ2QLPZSfpuvQdmHo+3N8NL1/wuuD3pC93dLLwgozJOooLGtoRN
         aYZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=hJlhHlWyzi23R4WYogmkOe3hqIQW+Qu/GIFXzuWF61E=;
        b=PDqEAzv9LNayJe/tZxyQdc04wdvV1pFJYoSFDRZ22lvGN3ElE6V7dmO1FG2TLBwGwu
         63OBAJWehHS6Q9eJLQKzoolAULNdKPEq2869BLKjTcrJSBK0GqSXGbON8MdmyFcnFUD/
         K//BXtRItwhDhpJwK4ogN+KFBmVC6vieVZdqifUhjvxwwjfKV0IlJ5FbwaceOUr9RKzl
         8O2fVwr1RdNSv2LborE+exFbJmNNlSqDF4OMk2FZsDSHyxCohgqCEB9EpWEniFe2HxvL
         TLBj2W88W5hE3Urjl03pW6dGKXU2NA5SiG9FhpjC/wlNTx347z0TvUgmLO/8rCXJJIVA
         I/KQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fjasle.eu header.s=mail header.b=PwCfqkix;
       spf=pass (google.com: domain of nicolas@fjasle.eu designates 217.72.192.74 as permitted sender) smtp.mailfrom=nicolas@fjasle.eu;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=fjasle.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hJlhHlWyzi23R4WYogmkOe3hqIQW+Qu/GIFXzuWF61E=;
        b=P5fb6wtj1krhuGu2vAuqOuiIhastC1Xzv4emIZ2DjhYF+BGiT8fC6ZwyBDzlxn1V++
         UueqYesBwYY33TazofipwZFjrAuPAD5CISRwAG7aE5cPfBY0WE9FKd6t7XXPh/15+suI
         C/9QboGNU3+l/rLUUuW1LZ//YuS1T+fBE8PMJeCgO+2N7lWD4ojlPpVDyZhL8OJAC52j
         Hl+OKTkMy/oYLrrTV7N3fKN0gQMT8rt1xz7XyE9f7I1LTdm31IJIBm57MImcafdbYkSt
         RxxIBnYcp8utu7s7LhSy5cKh6YI3DwYhCGtyxe+zyAcjeiVQyCJeruJftWpOq+jb9coG
         iCJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hJlhHlWyzi23R4WYogmkOe3hqIQW+Qu/GIFXzuWF61E=;
        b=NCeUaJPwdg/guNT4akc4Vsd/9F19ydJvNcpOFwW38EoaRUck/HSRCZqV0U4tIhysxs
         pTXARLKEpcmoNfIjeEPULhS+/etS4v22Yv5qDyOGrsEEjR2QD7/YOShwdviDn6HwASRv
         BkXR+eJP9ASIG3UYK3Q/Ns7TkUzPvinadO1U/7nRawZMvTN2PLwCdV9Xcvn/JflWZYx8
         2xYN+/zrbwANNcyKDBIRyCTPIwNqPJv36MQqeoIDv0y8HI6IMoMmJIqucox/zu/bEaks
         8XD2zDBByyII3rS9ySw8wWu3AvVQiItcaVJVygdACwEd6AUE5/Mxrhc2Qq+bfsQpPBo6
         kcSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331BD/kSFezQRjV33M/udB+95wVNeq/OmTjTPliC9ofGomgBDyw
	v2OTZkleKITA0tApsi1G4IM=
X-Google-Smtp-Source: ABdhPJxwu3qHXeTAHljswaixDMeeIxLY73FMvle2lZeWhkgMgctFBv4v9HzWYkO4QWOXaBAvqetgdQ==
X-Received: by 2002:ac2:4884:0:b0:472:344:1c86 with SMTP id x4-20020ac24884000000b0047203441c86mr18734599lfc.628.1651778734338;
        Thu, 05 May 2022 12:25:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a596:0:b0:250:5d3e:5653 with SMTP id m22-20020a2ea596000000b002505d3e5653ls1251399ljp.9.gmail;
 Thu, 05 May 2022 12:25:33 -0700 (PDT)
X-Received: by 2002:a05:651c:d4:b0:24f:255d:c68d with SMTP id 20-20020a05651c00d400b0024f255dc68dmr17127648ljr.436.1651778733108;
        Thu, 05 May 2022 12:25:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651778733; cv=none;
        d=google.com; s=arc-20160816;
        b=Ro0WGVwR/GmMq7TFsqa9FaezyvIyBfHFAOkKlyu+OBLqBuVGuQKrGOC3SIP1pY3AzA
         F/8Cz0cqBdRlhnv+L06uSNpONWljf/igSH1X8QnShPo1KPUb2rmbirV67fwFPqwj19QJ
         U2+Ac/scrGTrJX+bh9rBgzv7KXUDfjPfKVWhwsmVh5Z9+E55NReajKNbCQFiU9rxdxNJ
         qyUl3vN/xS7XPuaLl2aOJZMWgWFv1he0XigwFaPXqOmiyhVo9/gdyV7g+Jhq95ev9EJw
         28MXwDis4zDER5fQR0unh0gfHdjiHInbZgBeo8n1RUwGt8JJMoMAd8007hTUR2Ovqn0m
         ZV5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=n/FxY6zPH74F7nr5vh/3ahrcnAHNAFQZXX8Kn+YhxG4=;
        b=m4rXn6IyL1lbqTQ0fY249U3ynkTFpvlwTZkg81U0t84NqMlHhLPOp6z+puor9d6fHb
         cS5hUW5SecEdjxjkLyzlUSkRZXzVlO4huiaWt82dZs4tKbBkpT2TyjoUE68aJo3/2nDZ
         exsCsACUW+7MvdCvqfV+EibaRdsIltDJ9PW7B9r5uRYXVgnE2djD//vnGt83Fyt1c7ag
         Ft3Q1fa9Ca1515qpn7h2Y16Fua8jblOhDLPCbKAvRkGfjf04qKYq9qpV4EFLhKxnHwdb
         wxFYG33nvBJZslNARpT8xYuar5QuTVJFkni1xzqohiTKjaQi978/5hk8oF5I8n0NA+eK
         3zCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@fjasle.eu header.s=mail header.b=PwCfqkix;
       spf=pass (google.com: domain of nicolas@fjasle.eu designates 217.72.192.74 as permitted sender) smtp.mailfrom=nicolas@fjasle.eu;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=fjasle.eu
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id e18-20020a2e8ed2000000b0024f0dcb32f8si115488ljl.5.2022.05.05.12.25.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 12:25:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of nicolas@fjasle.eu designates 217.72.192.74 as permitted sender) client-ip=217.72.192.74;
Received: from leknes.fjasle.eu ([46.142.98.182]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MiIhU-1oH5uO3YH8-00fPtT; Thu, 05 May 2022 21:25:22 +0200
Received: by leknes.fjasle.eu (Postfix, from userid 1000)
	id 38E543C088; Thu,  5 May 2022 21:25:20 +0200 (CEST)
Date: Thu, 5 May 2022 21:25:20 +0200
From: Nicolas Schier <nicolas@fjasle.eu>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>,
	Luis Chamberlain <mcgrof@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	linuxppc-dev@lists.ozlabs.org, linux-um@lists.infradead.org,
	linux-s390@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v3 01/15] modpost: mitigate false-negatives for static
 EXPORT_SYMBOL checks
Message-ID: <YnQkoFahOeUVpZhj@fjasle.eu>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
 <20220505072244.1155033-2-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20220505072244.1155033-2-masahiroy@kernel.org>
X-Provags-ID: V03:K1:453ge2nHJXg6JLo5cZeMgSEFhVvVa0swhzjR0uQKtW94gAuyPQc
 MTjdF1f5pbFygWaA0SosWLKNmyUdXwFK1CUqAPSkq2SKzmSgl51MwQo6xoMn3Z2qWshs+mq
 zUww0m+Vg1VGGeeohNre8BVjxjh7qSjrYTbvLGMl0VUFNN4UdaEPPhevVoj5lG7DWNaJkaT
 +cWvR/fsod9psxrnhT2vQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:E/c3KfkTYqI=:WfyzXN1Ql6zaAT4DiqwkTJ
 g6eBKNFCR1ckva7OwYLJxj89Ptoc7lU/QO4lc4dF5H5MR2oC9dEcNMIvgldHzZ1mwtZO3jDSa
 kxXT3P45Oly90jDN6piciVbpmS5PiIN98iFiMY3xWoFqxSTsPukcGbRFtCCtqCpdJFGsxrvUv
 50PptUYBB9qVbLMaGXWWcKdHnFpYHU85kTiui3ORX1eGuyp6gSGp64oE2KjBNxWkD+Pg3AsPO
 cjxqaI7hrDswa87uvVmP/XszaYYmgeCjDOs7Jr9YdeSMDqnDsm+FxJTDEg1WvBF7kSY0KAPpl
 4ne04Q3EQdkaXgf1PIurv/NyYByPMvji1xwcjkPIOqTx+r5ywtC2RPfAAmqI+tOzChPjNmanI
 ui6sUW2f6hOzXSmEtMWJPjbFXh9she7QBrCgtg46CgWI/MwDRl4mRYh7jgZWv40k5DuML+pIw
 eFQ4OVTUOUdwWqOUnH9p4Ot93BBAaDOYcSpkgUtcWqF5BY1O3QqdVRYTO1i5ttyQq5K1f+MmL
 UtUNOAZJCqH/RQkfD4FMcz57oBp90XzENlKNb1c8Zo+iAeQ/Wcgvk2VXpQY3suOnZP1qS4k5D
 e6+MqTSwhVcXqK3nrnpHGT6bvgoYPw+15z7ABCJjY0qInVfWDyYmeKpkhgCzomsPr51wgB5Xo
 WYfEQXww31bqGHvnVdV0RE0g76zSdQvhaaCCPbDEjn2MlbFHgAeTjpB1gInHE8B0sXfg=
X-Original-Sender: nicolas@fjasle.eu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fjasle.eu header.s=mail header.b=PwCfqkix;       spf=pass
 (google.com: domain of nicolas@fjasle.eu designates 217.72.192.74 as
 permitted sender) smtp.mailfrom=nicolas@fjasle.eu;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=fjasle.eu
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

On Thu, May 05, 2022 at 04:22:30PM +0900 Masahiro Yamada wrote:
> The 'static' specifier and EXPORT_SYMBOL() are an odd combination.
>=20
> Since commit 15bfc2348d54 ("modpost: check for static EXPORT_SYMBOL*
> functions"), modpost tries to detect it, but there are false negatives.
>=20
> Here is the sample code.
>=20
> [Sample 1]
>=20
>   Makefile:
>=20
>     obj-m +=3D mymod1.o mymod2.o
>=20
>   mymod1.c:
>=20
>     #include <linux/export.h>
>     #include <linux/module.h>
>     static void foo(void) {}
>     EXPORT_SYMBOL(foo);
>     MODULE_LICENSE("GPL");
>=20
>   mymod2.c:
>=20
>     #include <linux/module.h>
>     void foo(void) {}
>     MODULE_LICENSE("GPL");
>=20
> mymod1 exports the static symbol 'foo', but modpost cannot catch it
> because it is fooled by the same name symbol in another module, mymod2.
> (Without mymod2, modpost can detect the error in mymod1)
>=20
> find_symbol() returns the first symbol found in the hash table with the
> given name. This hash table is global, so it may return a symbol from
> an unrelated module. So, a global symbol in a module may unset the
> 'is_static' flag of another module.
>=20
> To mitigate this issue, add sym_find_with_module(), which receives the
> module pointer as the second argument. If non-NULL pointer is passed, it
> returns the symbol in the specified module. If NULL is passed, it is
> equivalent to find_module().
>=20
> Please note there are still false positives in the composite module,
> like below (or when both are built-in). I have no idea how to do this
> correctly.
>=20
> [Sample 2]  (not fixed by this commit)
>=20
>   Makefile:
>     obj-m +=3D mymod.o
>     mymod-objs :=3D mymod1.o mymod2.o
>=20
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

I like the detailed commit description!

Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>

>=20
> (no changes since v2)
>=20
> Changes in v2:
>   - Rename the new func to sym_find_with_module()
>=20
>  scripts/mod/modpost.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
>=20
> diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
> index b605f4a58759..a55fa2b88a9a 100644
> --- a/scripts/mod/modpost.c
> +++ b/scripts/mod/modpost.c
> @@ -272,7 +272,7 @@ static void sym_add_unresolved(const char *name, stru=
ct module *mod, bool weak)
>  	list_add_tail(&sym->list, &mod->unresolved_symbols);
>  }
> =20
> -static struct symbol *find_symbol(const char *name)
> +static struct symbol *sym_find_with_module(const char *name, struct modu=
le *mod)
>  {
>  	struct symbol *s;
> =20
> @@ -281,12 +281,17 @@ static struct symbol *find_symbol(const char *name)
>  		name++;
> =20
>  	for (s =3D symbolhash[tdb_hash(name) % SYMBOL_HASH_SIZE]; s; s =3D s->n=
ext) {
> -		if (strcmp(s->name, name) =3D=3D 0)
> +		if (strcmp(s->name, name) =3D=3D 0 && (!mod || s->module =3D=3D mod))
>  			return s;
>  	}
>  	return NULL;
>  }
> =20
> +static struct symbol *find_symbol(const char *name)
> +{
> +	return sym_find_with_module(name, NULL);
> +}
> +
>  struct namespace_list {
>  	struct list_head list;
>  	char namespace[];
> @@ -2063,8 +2068,9 @@ static void read_symbols(const char *modname)
> =20
>  		if (bind =3D=3D STB_GLOBAL || bind =3D=3D STB_WEAK) {
>  			struct symbol *s =3D
> -				find_symbol(remove_dot(info.strtab +
> -						       sym->st_name));
> +				sym_find_with_module(remove_dot(info.strtab +
> +								sym->st_name),
> +						     mod);
> =20
>  			if (s)
>  				s->is_static =3D false;
> --=20
> 2.32.0

--=20
epost|xmpp: nicolas@fjasle.eu          irc://oftc.net/nsc
=E2=86=B3 gpg: 18ed 52db e34f 860e e9fb  c82b 7d97 0932 55a0 ce7f
     -- frykten for herren er opphav til kunnskap --

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YnQkoFahOeUVpZhj%40fjasle.eu.
