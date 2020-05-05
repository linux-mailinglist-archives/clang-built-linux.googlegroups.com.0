Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBPNGY72QKGQEUETTFYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 892C01C627B
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 22:57:34 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id b16sf1117174lfb.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 13:57:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588712254; cv=pass;
        d=google.com; s=arc-20160816;
        b=mx1rQUyvAIqKyeNYAvBgbotyNzKJS+Rk6uTfLlEGAuoJfKUFFX//q1MqJedpE/Hcqr
         4GWzYRZu50oSVs269MjZ/911+5C5Bjsp4mNjnILN1gYRL0cKNG5DPiImpQLLJ8kG3d/t
         rC9j1QNKJxxIJKstWpzRzEet2pscX7PfAODxv+YL+x+7AlQRvyN/zvJLwPrt0MzH1VcI
         u6ObPGukHZVuKqZA3sW6e9OkkPY3Hyzm2Hvzywxkw+sSKWUaVQF8svuhRC1Z/BKv/3iC
         Wf90Jqg9m+OrswmkBrHf82ASPmk3LmLSuyWXdurAwRZIsdD9PX/77+aPnEdEjKA9/8NP
         QT9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=2xwscTNbGc0PIlQdE9cP4tS2w2s/t7at+eEv+OuwJ9Y=;
        b=nvvp1Wm6e9K2jIhEOvE+/xxfK21ZOKQa4HnaCBzBqanWW2MwLR9D0EoSYxhQjfDz/B
         9S8MR0bkUEmB/RwZr7z7jOoijmseHA8E+pOmBkSE05GbnTx1tU/Jqq63Ecp8mK5m4q3V
         0b7mSD8LsH9v5qhqzARQZV38NWGsBx7oFRZDvleA9U7UVMH9jsKsnoB/utr8aJ0cg2TE
         jET1fLkbKoKlZ7A4RNuHlvVuUVHtrIgih42sjL/UrT0PwQJlvzFiUJ5jEepEIZZVuig+
         H0EFZEc0QuiSASzxOYrNDDYnrwyZaA+cSPoXQwu5FgwUIRrFyzURqXgazha4jPzHwvRY
         hUyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2xwscTNbGc0PIlQdE9cP4tS2w2s/t7at+eEv+OuwJ9Y=;
        b=Qy+n9wniTL7Z9tQSg+U63+irhju/JXpV/58VMW1Yo2K0D8a9RIMExGbJkrnync3KMp
         grMyf7VA+lxQS0o1NYfXR24jLDHful/WPNI6U2uCrVjnQuk4RpbBx85gIDWYW8kHo+Es
         xOjPUpDc45f+K1TBc3xcLm0Fj9ViQzXMu71OgYMdIMDZvnkpjorY2kCpXygNyEmWcv/b
         99cX5xmJXHXujlOkmHea/JiuTcZW6MFhQKMiyPihrEjW8Qm88bVVZrZOi7BmxexuW4Ju
         QwjbzHmGvj4FD/BGhYdRRIGiMcrlAnBcP4NCMBb28mV9xvxuz8y73KSPOcYspyFi3w4m
         0Flg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2xwscTNbGc0PIlQdE9cP4tS2w2s/t7at+eEv+OuwJ9Y=;
        b=OqW9Z1/zeXr7XCgiFX4IlRkg56IPo1ZDSdIxjjhwJmhJzF0eyWn8pyAlxRn4dMIduU
         c0U1pqBv/L3V1vDBGfCTcvUrXZdjmWEJWegXC99OwNW5JiVXpp4LNMk1OHSLzlSo7+VX
         TVVnriFu3wRlL1GQIZNrG0ophndJIzZ5X4Q0k2DjHln9FBtdjzqqlkKZYK//h4BBerL5
         f6X5bN5Xa8To5kyf4E20gTWFZrOURFSVTyaS9+bHPOUuBiqOoLkdKN6rFsdMUSkUN5OL
         nHLrGLCLQcUe3+LRJgTX/Hxghs5eOenXAwVhyDkSuIj01XZ6B2KaDvs/MmPeCjnVMnE8
         8ftQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYBKTc7Vs6H3jaquXhW/rNglCz0vbNmqF55jIisuDsf3H5une0a
	lrqFa7k/ZTfMUh29FLCXaAQ=
X-Google-Smtp-Source: APiQypJKgfoHp15ck3NxQkEhAtNAMU484It9qFxe8jFcgVtQfIF2RA974xqY/PegvtY2bk5TH+IAtQ==
X-Received: by 2002:a2e:2e16:: with SMTP id u22mr3073180lju.243.1588712253964;
        Tue, 05 May 2020 13:57:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:86cf:: with SMTP id n15ls859647ljj.11.gmail; Tue, 05 May
 2020 13:57:33 -0700 (PDT)
X-Received: by 2002:a2e:9e4f:: with SMTP id g15mr3032558ljk.78.1588712253344;
        Tue, 05 May 2020 13:57:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588712253; cv=none;
        d=google.com; s=arc-20160816;
        b=qu6eMCrqgJ7mCl8obVLisZnB4pNhIOCyhfJFLmG+2mC8mg8WaMl1OMekKDxxwEWC9a
         Hn7ClRmVobr7UrcPqD0LIf3CzAptisvdLcngutq4qNFP03sWZUKkQ5JedqfBzYJMb2sC
         9SwK8MHriVnET9ya3yI8THD0KX5ypTP+5f8slYN8cLMvSVp1MrbmgwHc3ZBfgPU3fSR1
         5IYOVTC91oYTTKWcHwahQsYekK7OaNtH7IL8Tit3IoW7MTCMZFRhaJ0YE+Z4PbgIwiEf
         CiC1aWvuY31AxxWCJjpqTRM+eURbwqTGaqBSdQJaud3k2lW3+m1Z+b8LZPIosbrtZNbH
         7u5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=wiqVfM7E37hOn9B+uWQ3y/Ui3pSBgnYqAkhOuYsc82s=;
        b=VE0BzEDxwiVBKX1/BwVIJETJEAtNg1wBxibjCyjvmWGqjJ6HqMVqaHxAjf7UqeTqGL
         7mz4bUMt11m0x1u0aLzefetKF3dCj24ODS0HyL4HskdqsVtpcTkdJ6czh3ihCcWHVWdF
         RpcJi/bpcuJwfhVi8bSl0Xx26SEHKoK6Ks0r/cjN87sCgV+bL5KAyrK83W4dmRbN4r0x
         4DC81bYVwUtEYKLl/5Lo4q+HwUOZDVYXwSa01VZ0pg8c3ERrWN0kMJhAGLDox2yTwIzL
         OB/bWSJ0Rl5U3pdLOIMGMH4t+F7gS3dqyT4TCloXqi59hl/mbQJjSt2K6pNa9gSOe0wL
         IHYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id f1si208555lfm.1.2020.05.05.13.57.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 13:57:33 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Received: from mail-qv1-f45.google.com ([209.85.219.45]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MlwBf-1ioFHr1dbP-00j33T for <clang-built-linux@googlegroups.com>; Tue, 05
 May 2020 22:57:32 +0200
Received: by mail-qv1-f45.google.com with SMTP id dn1so6137qvb.3
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 13:57:32 -0700 (PDT)
X-Received: by 2002:ad4:4a8b:: with SMTP id h11mr4439312qvx.210.1588712251082;
 Tue, 05 May 2020 13:57:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200505141546.824573-1-arnd@arndb.de> <30d49e6d-570b-f6fd-3a6f-628abcc8b127@suse.com>
 <CAK8P3a0mWH=Zcq180+cTRMpqOkGt05xDP1+kCTP6yc9grAg2VQ@mail.gmail.com> <48893239-dde9-4e94-040d-859f4348816d@suse.com>
In-Reply-To: <48893239-dde9-4e94-040d-859f4348816d@suse.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 5 May 2020 22:57:15 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2_7+_a_cwDK1cwfrJX4azQJhd_Y0xB18cCUn6=p7fVsg@mail.gmail.com>
Message-ID: <CAK8P3a2_7+_a_cwDK1cwfrJX4azQJhd_Y0xB18cCUn6=p7fVsg@mail.gmail.com>
Subject: Re: [PATCH] xenbus: avoid stack overflow warning
To: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>, Stefano Stabellini <sstabellini@kernel.org>, 
	Yan Yankovskyi <yyankovskyi@gmail.com>, Wei Liu <wl@xen.org>, 
	xen-devel <xen-devel@lists.xenproject.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:XdiXm+4wYsAQGl1c0IsFJlR3B2RVFn9+1VNT+jyRkB6uPolZRrx
 loproxGZ518R3hZbTkvXCwDUoL3esNA38PpIW8F4zm3RHqxTLaBjts7ULH0nITTasZKdxu/
 GGef9jXt0uhbIm1XKFn+TfS2r0jYDpjLNVCHe3AnbyPejx0zemTI6I4yvAqTkSgwQ57SRDa
 X4laie/hYdOuoFOvZnw0g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eeXCTSjkjp8=:i4DpJzJ82KmCQuA4OmMNui
 p9ZZdWiXAeIy+MBJJ6FA15VdMZZQKD23GhG+UJX6A3ixW3TujbpSqaaVy9TSssZGvUoltLVj6
 FQ6vfxsKHysnsg8LEbUmzYOTDZlWyQi0b5cJU/iLpopjWAeW4tXXLkY7/GL79DouL3qtahEXA
 IzPDG89mI5qpXk5wucPYuI8ITDEA9Z18Jg9pU1ZUqjsM5B4/8ruyKHgoF6nn18qWI8FfQrqyN
 /q0TzvsOuay3iaLJYxCpn5pWvjoycZDVFsnPbZvo/yRtR1n/bwAySv4WeHJBr7VGXnFs6lUOk
 T3yVlEe/CEbAHybRo7TuEGivx8svzHpC4swSYawH3uG1nh2nv0afTuuXg8ctyCYBFV7OCJO4R
 RiPFhex9WNI6TiLESEmVIjaWo2aUeyb5OPgMalzZ4V0ckwatAj5fqERL7I/y7UK8OQiknErNo
 TsZoCbGHITBxVDgX/ESco6JEUHE4pUAEaL+HX1utAXrXZ8rUbo/0TjSqyVxSHj9y4Doj5QJFo
 VTMfhc/CrIh0Eq2CaHm372KZNqSViivX+Ljve3mCFnO0GIV68xsuL+/xNFdLXqBEWehot5a58
 d2sNrbJ7+dUdi8Sb0uHKh5jmtWQ5oBLrIs7c/H4+xF6suWD+w4WpNCnx3cwyHJ5cHDDapo4/i
 6fGbRpHB50UqfBSwAQk6D7OPRL2Pqlkw5cERiIz2ks8/cKVHqjUesXJZMJbdfOsvDHP7sm0CL
 BHzhizA/Dviyz/vkrboyawys5ARbDoZ4F7XM8TAM5f2Rfh54IdSQmiRl/x+iRCAuwBeHtJ5RR
 6dPkFi3uBLsN25q+j8pGXdN+SrR1Z9vLJwrWqfg++qZ6PB3sTg=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.131 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Tue, May 5, 2020 at 6:02 PM J=C3=BCrgen Gro=C3=9F <jgross@suse.com> wrot=
e:
> On 05.05.20 17:01, Arnd Bergmann wrote:
> > On Tue, May 5, 2020 at 4:34 PM J=C3=BCrgen Gro=C3=9F <jgross@suse.com> =
wrote:
> >> On 05.05.20 16:15, Arnd Bergmann wrote:
> >
> > I considered that as well, and don't really mind either way. I think it=
 does
> > get a bit ugly whatever we do. If you prefer the union, I can respin th=
e
> > patch that way.
>
> Hmm, thinking more about it I think the real clean solution would be to
> extend struct map_ring_valloc_hvm to cover the pv case, too, to add the
> map and unmap arrays (possibly as a union) to it and to allocate it
> dynamically instead of having it on the stack.
>
> Would you be fine doing this?

This is a little more complex than I'd want to do without doing any testing
(and no, I don't want to do the testing either) ;-)

It does sound like a better approach though.

      Arnd

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK8P3a2_7%2B_a_cwDK1cwfrJX4azQJhd_Y0xB18cCUn6%3Dp7fVsg%4=
0mail.gmail.com.
