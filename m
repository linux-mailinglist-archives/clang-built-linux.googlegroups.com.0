Return-Path: <clang-built-linux+bncBCIJL6NQQ4CRBKEJRKEAMGQEDIXJ3SY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACFF3DA122
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 12:36:25 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id p16-20020a0565122350b029030e2ef98a19sf2418248lfu.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 03:36:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627554985; cv=pass;
        d=google.com; s=arc-20160816;
        b=RnJ+yx4BNwRoXFYeN2+WtJzMkJFyNWbKoe8EM1gVqAfbGxg09QwE3lSgs/5IPpj73A
         QrA/q2fMSdEMf3vKQ2FoT65w9JRKHM/McLum0ZMBz/olKmaQM4eTHrxxT6yKDztxUv1G
         RrDTtTZi7NdJHmQQtwBdZ/cibp+NWXpEBuBIhqFHFWG5hRo+SXijPx+TLwDf/1erwkT7
         QxUhIYyrt5M9GFE+GyYR/c/eYrMrAXtvRo60ckZc9krVEx7UyyBWpGAIzGPsdNqR+Chv
         xcyzYDhhEbUg5SyJKRxK508FN/f0KZYwe1dfu1Nkrcz8L+ioEVfkMz15G0jj0lJST76R
         eyrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :reply-to:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=OIG3X21cyIxEIkOsJKi72wHrlBERLJy5QGDNSIJe8IA=;
        b=OzlXHhywzBnx4zfrQgzgItJ2HGmk8KTiw2WxVDXyg61mGUeuYufTpFnYQRDx0ZDFVX
         Oq+ZF3FlNjgnyGJan4d8JJipn+I7xzXpzPy5X6e1cqk/zMUGb7AAnfhMGj1OPFtIsxSC
         YcA7ocoyvbJ8ppIF6uLvQ9beRMTtvim7AlA8uJsqtw5DUbbNu5DbitwI9+3m7yB8gJVF
         IiwPSRVgtl9dWunv6JlYEZ3ChM5fn9gQzsKhiR4wp8HNjAQpQRlOf42kLwFYqdSXcSPC
         eSZ4eb1X4/qKvgLJnLu+syOpb/sY/cHI1gdmtWuX6UKuRXvhG4iVq9R7lHr+PNboyRHv
         0xRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=pwTsly5m;
       dkim=neutral (no key) header.i=@suse.cz header.s=susede2_ed25519 header.b=oD2Z+sef;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=dsterba@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OIG3X21cyIxEIkOsJKi72wHrlBERLJy5QGDNSIJe8IA=;
        b=csCGkPolibYqZuF3vyHeONQcAUizFkTV7iyfilJwvhNiS1JohVtXb6HtksS90GN4/Y
         ZputdhynZbs7G1uDsh8qPNrjT2rGiV2S47v5i3uMDEAwJYF3SN+zkGvUmdLlHDlyBQ9A
         2tDwlwEXqtDRDCzt0y4RyhJbio4IFM65yzI540AN9a5vumgGBHRikTzxUqtEhPf5aibb
         ERC/zpSIoTUKki8/uQyESiIHntDuAiUnXaI9JAuvT7Uk632AQipeDo6har+Mehc0hnqB
         5T3hrj6Ia4N8qNSboyYz+HtebwC7IlbQpyCfA7RFlS4HdjNZvzbueEEJts5+ast3kFCa
         9B6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:mail-followup-to:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OIG3X21cyIxEIkOsJKi72wHrlBERLJy5QGDNSIJe8IA=;
        b=HPAnFiMOy++Cxm5yXc+vFT4e6FegV7D2jNU+ISSIF9mApGzZVY9Lm7hAXwf7orX/iz
         BJtQbgNW0QYaoBISRzKs7tnctezgtuPJsVeq8XnzeqNnqAGarSxwIezE8orrxzu6ezrs
         Z5LOtqW4MqT17gvz6EXTTo4pwE2ePt5LsWhwTimZgUaQyXNHlA/n0KIvKIentWxpRmQr
         wkNtReQfkpWszDcFytF9/kSpHWZfg9BNcccZzrSpyKBlynl6LH3BRLa7/NuMzZCAizEh
         sRpT3tPpq8/0KUa6IcbkB1nz+TbmGpA3+jXC2WGog6nZCg8zzl71p6W7Zb24RDtNuffB
         mGgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303LxBFufGwVPsQdfsAUt6SKpR40TkNaYQ6NftJZn/Wj7Jo8aPS
	Wi0mfcsIbQdlB1ZqFH4VAfE=
X-Google-Smtp-Source: ABdhPJwH8UkF48zkECje7OV9JuhQ5LMfYXjMQyg3PgD2aiOTSjcBoBW3NPJiEyNrcORNyF4xTEVFKQ==
X-Received: by 2002:a19:6e48:: with SMTP id q8mr3479365lfk.449.1627554985112;
        Thu, 29 Jul 2021 03:36:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b1e:: with SMTP id f30ls4059680lfv.0.gmail; Thu,
 29 Jul 2021 03:36:24 -0700 (PDT)
X-Received: by 2002:a19:f60c:: with SMTP id x12mr239365lfe.262.1627554984056;
        Thu, 29 Jul 2021 03:36:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627554984; cv=none;
        d=google.com; s=arc-20160816;
        b=eKcyvwagCPQOv2sWsef25I71RuQwHWk0vl+8CKBa1Qe+KfF7WfRhBZm60zjSttPSRT
         vR5977cwX04Y0TzH8TyWQgOFxyqELsAkaGRqTOdYQBfDwz4C4DD4EOHq9ZMC6EoYyK0o
         /sJOlbk/rWz7ylTEoN8dM0R6hMRu+zR50dCrJ6OxhwFUEAQ7ECtbhXmgIt3fbXiLPGr9
         TeenawRyMM+s8FFzJcalVnly+glkEcZ52GH/fNFr5X4RdXK4v5wR4aKnGHTatd0i7qdH
         prRa8LuzXCVCC1lsDN5YXFxA7EVbKj2MKIqr/BQC8/FvkW69TdE0zqkfVvMCiev/eEBg
         qZjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:reply-to:message-id:subject:cc:to:from:date
         :dkim-signature:dkim-signature;
        bh=UkKnqVbw14P1zZ1afK/03fijXFZbWicFe7fyoa6bfnY=;
        b=BnB3Tgaz5GcikM+bF9NqeHbUsePb1EKP30VfzlVktyvI4runypxyn7JZfAXFZggZqD
         NGT6Ruo3jg+qCGmztXBjBRKwVhRPVXSPv+6L8tFQtTaAKaKxOXo215Se6uMG9sQy/Ugr
         VONAT1uHrzcVk0G7cQ+okT3GYZtQnLFSPAnDqIQ8+0/LVZvI0ye5gs/uv0qENW1BqReW
         ZVPEw6m5g0V86Hu8rz3MMhPh8MeIhmeoWucoDTvWjNeUORGei6s9xqHXkCWBq85PG1uD
         VdUauPIDDopaPBko6+KZNuQGd0CjtdF5ybq2TVa4balrZBe3BNP6XDup9rSlVVHlBlrv
         CjHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=pwTsly5m;
       dkim=neutral (no key) header.i=@suse.cz header.s=susede2_ed25519 header.b=oD2Z+sef;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=dsterba@suse.cz
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id q4si110849lji.2.2021.07.29.03.36.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 03:36:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of dsterba@suse.cz designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out1.suse.de (Postfix) with ESMTP id 508A0223DB;
	Thu, 29 Jul 2021 10:36:23 +0000 (UTC)
Received: from ds.suse.cz (ds.suse.cz [10.100.12.205])
	by relay2.suse.de (Postfix) with ESMTP id 36ED5A3B8C;
	Thu, 29 Jul 2021 10:36:23 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
	id D7134DA7AF; Thu, 29 Jul 2021 12:33:37 +0200 (CEST)
Date: Thu, 29 Jul 2021 12:33:37 +0200
From: David Sterba <dsterba@suse.cz>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 47/64] btrfs: Use memset_after() to clear end of struct
Message-ID: <20210729103337.GS5047@suse.cz>
Reply-To: dsterba@suse.cz
Mail-Followup-To: dsterba@suse.cz, Kees Cook <keescook@chromium.org>,
	linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-48-keescook@chromium.org>
 <20210728094215.GX5047@twin.jikos.cz>
 <202107281455.2A0753F5@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202107281455.2A0753F5@keescook>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Original-Sender: dsterba@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.cz header.s=susede2_rsa header.b=pwTsly5m;       dkim=neutral
 (no key) header.i=@suse.cz header.s=susede2_ed25519 header.b=oD2Z+sef;
       spf=pass (google.com: domain of dsterba@suse.cz designates
 195.135.220.28 as permitted sender) smtp.mailfrom=dsterba@suse.cz
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

On Wed, Jul 28, 2021 at 02:56:31PM -0700, Kees Cook wrote:
> On Wed, Jul 28, 2021 at 11:42:15AM +0200, David Sterba wrote:
> > On Tue, Jul 27, 2021 at 01:58:38PM -0700, Kees Cook wrote:
> > > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > > field bounds checking for memset(), avoid intentionally writing across
> > > neighboring fields.
> > > 
> > > Use memset_after() so memset() doesn't get confused about writing
> > > beyond the destination member that is intended to be the starting point
> > > of zeroing through the end of the struct.
> > > 
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > ---
> > >  fs/btrfs/root-tree.c | 5 +----
> > >  1 file changed, 1 insertion(+), 4 deletions(-)
> > > 
> > > diff --git a/fs/btrfs/root-tree.c b/fs/btrfs/root-tree.c
> > > index 702dc5441f03..ec9e78f65fca 100644
> > > --- a/fs/btrfs/root-tree.c
> > > +++ b/fs/btrfs/root-tree.c
> > > @@ -39,10 +39,7 @@ static void btrfs_read_root_item(struct extent_buffer *eb, int slot,
> > >  		need_reset = 1;
> > >  	}
> > >  	if (need_reset) {
> > > -		memset(&item->generation_v2, 0,
> > > -			sizeof(*item) - offsetof(struct btrfs_root_item,
> > > -					generation_v2));
> > > -
> > 
> > Please add
> > 		/* Clear all members from generation_v2 onwards */
> > 
> > > +		memset_after(item, 0, level);
> 
> Perhaps there should be another helper memset_starting()? That would
> make these cases a bit more self-documenting.

That would be better, yes.

> +		memset_starting(item, 0, generation_v2);

memset_from?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210729103337.GS5047%40suse.cz.
