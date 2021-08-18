Return-Path: <clang-built-linux+bncBD2NJ5WGSUOBBJ776KEAMGQET7VM7DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F353EFEAC
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 10:07:03 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id e12-20020a05600c218cb02902e6bbacdcd1sf542695wme.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 01:07:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629274023; cv=pass;
        d=google.com; s=arc-20160816;
        b=bxZvPDkANjabOMpGD4GXcIS7a2wkrvtOijqvgrUFjHyVhD6fLGaZfpy4Upjc9An1kn
         6S327F5jDKDq1a7D7CUl8utDkSp9uOXGT5NQx+0mz52OKO9t0BCzwk2tfUXVXnpgkLqx
         ijD0nuzflacSiPrgj8XeBIkioVzyV47z9OcW+p4ccgg05ilD7Z5DwLnUDYfn41Hsi86b
         HQucUzSf+MvhEVmHvnuebMVFtNOzt0hZXRGTcdyAzcSbqkPMdQuMLnFUZCOLpU0rnaHA
         /+5rngbO+poACkAJyLa312uvdXq/2GifgMZEmJdPKWUz+g88gVfdXdhc9rp8sL5XXJcC
         b5Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=6mvfbe/WTTPIA1fYjez1gypEGnb346To8EnNKlF4uqA=;
        b=A2T2rjDLIBy0LCaXPTNh76OYonI/cC7uYBEnsWtmhl25lsKobGVRUC1AVvxlcwJmar
         r45AjWLhzRG8Y83fUnETES6f1b4gbs3qO/FzUPV5UhuzgOA4r/du+6KP/bfx1uwsKPSl
         1gFoeqIo2VVsXkWRbCaz66gyac3m1eNNVHUL63bSxoOTviv5M8aypdOGRuggLRcnq4lf
         I8iA8ZxzSTL1o3sx8LcJchOA67xK9RoBC+Q1054ZPR8dplN6gZFBHnooG4a3dQ/juDiZ
         K1sLcHUFRfVGKzP8HxAOydc3dyFTm/wa9whA8voRO+ejUto/ZbfYwT8xakrnFD3eiG3q
         tbMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sipsolutions.net header.s=mail header.b=D6mygLxO;
       spf=pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=sipsolutions.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6mvfbe/WTTPIA1fYjez1gypEGnb346To8EnNKlF4uqA=;
        b=PmAUoV2u2zX55lCm/bOnbVkuhchxkaMizLlVIiMB9nUqv4FaHXAoBO+FeZm2ZhxwCi
         N95hhO9A5X/doColal/iLr2jcl+Ttq+5pK6JKAZFHejdlZxH1TNIM+FjcMZsqAkF2zZx
         a3bOWmhuH+DEC4k28LOjS5S6001lkDZSso494ML3VxbRbHA/c56ImPjRzx3hLMupoMq9
         LIIM6muAV7U2T4AcJfAffWJW4kwlC4ew2NRh5I3m6H9XdcLkL8QtGn4eNk/ruj26qxEM
         I8/i6y0ru3fEc/UACOab/75gQxfK4mKpaOzxaZrLBq9joraxMvmqMJfF5ktxplYUMRep
         3MGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6mvfbe/WTTPIA1fYjez1gypEGnb346To8EnNKlF4uqA=;
        b=nhlnlVTlYtWvOiqBrvw/UmHrS48i0qPhEr1n0p5eNrC3cfiYqU5afERk4mBQQkL4IV
         kRKsbzf/AiECh0CnaIQDovZCe9rCM9AyB/mhJVfbggr6e4AzsA2aWG3J/qBUN+Snw+0P
         SdW4NiTj3zgz7BTzgHj6oaTRT9eglNCd5p0T6yjXTQHMxmFtJBvESvto4fhIX0mwPjwO
         Bw1WyMGR8HIvlYDAFuHMD1MPEAIZO3i/YpAAkhdxRGu00i4uG0m9UnviUMmjePqhh2VE
         Khc9T6rFP5Liq66TFMMCps9RpRHG6FFZkqTZppxJlGuKmLNEz8k5/h7kJ3jaP/NVKK/L
         UUZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GTXAZUelUrufWRRLCSaAV7BlW/VtFvqLi6UfmyTmCkisinLQB
	fYEEp8jAhssGSo9HrRR+XYQ=
X-Google-Smtp-Source: ABdhPJyt/2zYPqZhpFqNVxJH2Jqyzf4pKcDtH+7qlFnQqUtRZim2yRMjzk9UFTVUUMaPAVd1B1lbUA==
X-Received: by 2002:adf:e6cc:: with SMTP id y12mr9346197wrm.200.1629274023203;
        Wed, 18 Aug 2021 01:07:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c4c3:: with SMTP id g3ls580161wmk.0.gmail; Wed, 18 Aug
 2021 01:07:02 -0700 (PDT)
X-Received: by 2002:a05:600c:26d4:: with SMTP id 20mr7085115wmv.107.1629274022351;
        Wed, 18 Aug 2021 01:07:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629274022; cv=none;
        d=google.com; s=arc-20160816;
        b=IPaY9n0JOmHcUhrSsek5hPyWYa6GTwbuJ1WlXwMgMI2OuEzj85rphTX3duIqLQeXkN
         ZJs/wAC17B/goKkbrYnDouk696rg7aD/7T0DUotjjXeAYhCwJP78YMCPDBjfy+9Ymdin
         ICg0Wuhk0NN9cCrAdUkEoZ8D9nH3d1iIj7LyaumqpZkErRyfyIK1seLsZj3WbUi2Eiho
         DGFMQzZUg5aTvBQvqouBMhJMT6x0ovhtOI71fMeFQMrF3N9iOM5lJ5TusvTZefsc1roY
         6cyCDp+U97f7euOjlOBKZUd7ZdfKB5RhvBhaa/vNq3d/I4RqxLfxDPkp5gy+dFnQtt4b
         1Azw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=6OzbSXXafKMA7YgF8k8Tjy+aXQW8YBJ4OWUwbnu8sQw=;
        b=wQAiWCNZFYr+QFW6i7qUXeYisv0mwMrzg5nQWdyuMNoZC0oblG5jjFa0mUbzvGZsOL
         08jfmo+GP49oXc/ZAxh6qg60rg2N0Z501DfuvlMx/mlSx5IJypju59CKCRInTa4q6lbU
         NnqaHcOBXxx1GMjpGKJ5gJVrouanOyL1YVyLVXVSp3ezMpnxQwD8cP3DHKM4HXQn2JxT
         5c+1E4Lvx0fpZ/esyggEofCTBa8fUQh3FnCUFiufVX5MYZVL/9PwTDxqrYJZSSx2ekY5
         3yPQKsPOotPym0VFTb1jIl0YbaDlTw2tx+5+8+UD3rihzTiFfwG1kjPomB+8tmj74F0z
         kecA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sipsolutions.net header.s=mail header.b=D6mygLxO;
       spf=pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=sipsolutions.net
Received: from sipsolutions.net (s3.sipsolutions.net. [2a01:4f8:191:4433::2])
        by gmr-mx.google.com with ESMTPS id a1si253500wrp.1.2021.08.18.01.07.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 01:07:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) client-ip=2a01:4f8:191:4433::2;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94.2)
	(envelope-from <johannes@sipsolutions.net>)
	id 1mGGb6-00CcdG-FE; Wed, 18 Aug 2021 10:06:52 +0200
Message-ID: <8b48dac4c40127366e91855306d24e07eb0b81d9.camel@sipsolutions.net>
Subject: Re: [PATCH v2 44/63] mac80211: Use memset_after() to clear tx status
From: Johannes Berg <johannes@sipsolutions.net>
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski
 <kuba@kernel.org>,  linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  Andrew Morton <akpm@linux-foundation.org>,
 dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev, 
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org, 
 clang-built-linux@googlegroups.com, Rasmus Villemoes
 <linux@rasmusvillemoes.dk>,  linux-hardening@vger.kernel.org
Date: Wed, 18 Aug 2021 10:06:51 +0200
In-Reply-To: <11db2cdc5316b51f3fa2f34e813a458e455c763d.camel@sipsolutions.net>
References: <20210818060533.3569517-1-keescook@chromium.org>
	 <20210818060533.3569517-45-keescook@chromium.org>
	 <11db2cdc5316b51f3fa2f34e813a458e455c763d.camel@sipsolutions.net>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-malware-bazaar: not-scanned
X-Original-Sender: johannes@sipsolutions.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sipsolutions.net header.s=mail header.b=D6mygLxO;       spf=pass
 (google.com: domain of johannes@sipsolutions.net designates
 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=sipsolutions.net
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

On Wed, 2021-08-18 at 09:08 +0200, Johannes Berg wrote:
> On Tue, 2021-08-17 at 23:05 -0700, Kees Cook wrote:
> >=20
> > @@ -275,12 +275,11 @@ static void carl9170_tx_release(struct kref *ref)
> > =C2=A0	if (WARN_ON_ONCE(!ar))
> > =C2=A0		return;
> > =C2=A0
> >=20
> >=20
> >=20
> > -	BUILD_BUG_ON(
> > -	    offsetof(struct ieee80211_tx_info, status.ack_signal) !=3D 20);
> > -
> > -	memset(&txinfo->status.ack_signal, 0,
> > -	       sizeof(struct ieee80211_tx_info) -
> > -	       offsetof(struct ieee80211_tx_info, status.ack_signal));
> > +	/*
> > +	 * Should this call ieee80211_tx_info_clear_status() instead of clear=
ing
> > +	 * manually? txinfo->status.rates do not seem to be used here.
> > +	 */
>=20
> Since you insist, I went digging :)
>=20
> It should not, carl9170_tx_fill_rateinfo() has filled the rate
> information before we get to this point.

Otherwise, looks fine, FWIW.

Are you going to apply all of these together somewhere? I (we) can't,
since memset_after() doesn't exist yet.

johannes

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/8b48dac4c40127366e91855306d24e07eb0b81d9.camel%40sipsolut=
ions.net.
