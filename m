Return-Path: <clang-built-linux+bncBDLPBFGXVMCRBCXR2T7QKGQEJFXRB3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CE62EB8CD
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 05:11:54 +0100 (CET)
Received: by mail-ed1-x540.google.com with SMTP id e11sf1295413edn.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 20:11:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609906314; cv=pass;
        d=google.com; s=arc-20160816;
        b=KqPhOlr39J31nexKOYdCWpB97FS3pdMPfZ9Hv/v3rey4ji69wnsNbwMZNR66HgufVV
         SFRcLVzt8Wl2L0Q2ziwsiIHiesq14+vojBKkZqpID0kOKL3J5c4igrlGzi0icZiX4Kwh
         R1yLxqbzkbDHBxOPTkIS6xxicx+YKpO/s4CNuLfsXF9IOtOmP+o2cXRdh4ZUmAOUjA3X
         EBJs5sotxfaw5e8AFALuJr/sK0h1USopkxYTZomPALWw5FyKz9ejBXgVCvk9I/BfpPko
         p12PJcpNgBOrYLzX3ter/Cw6Z9qZfv27vAW27bIYgB3rmSVrmeK57zMhVzf/57ZL1/OG
         HjWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=+s8H4aIPbJg/2tJy6dZZPSLfNh1y+HCliQFRszkOvao=;
        b=UgE6YNFq1FVxhCvF1Y8QotNtHu73/dtCEnsaqmzrPLUQrkQxgvq8GxUrG3RjznG9OK
         izmfwcgU6L07NGvCv6w4bMhUP4U1FQuSahLebC4oD9BM4GwMA3GJ6YG0mo6Upvy0DG4O
         LVkc2jkx1gxNGfYT58TqnIIbPR20cVfv1PME9AGw2WRq9R2HDodVz1jUpaYB2rd+Nsr3
         XzTyEd/rwhJ1H6W5Jw8x0j/WlowUz/odeV8xaHK5yN5C9eb0k2UEO1MPiwHmuzQw1lKe
         YHdOY6zDA3kfFZr+3nnCy8q/YJtSE+t2oj+uV1nxJRRHDBLb/YnWQji/NALkvg+RPgL9
         nu2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PoCO6p8G;
       spf=pass (google.com: domain of smfrench@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=smfrench@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+s8H4aIPbJg/2tJy6dZZPSLfNh1y+HCliQFRszkOvao=;
        b=JDY/va9SfFyFHjR3laiOIhYPyMYduBYcs3fICVUcBgbJXgvTxDgfWtYA59Y6nlFsSu
         4lFHQuxQPoC1jm30a2RYfbdGWUIyk4AvBbVixPCsw3x313VZCG7YrSEjVNSqSmMjZ9gz
         k29vxA37n4a9dBOTbUNTuEdRy9unjDLdEw8UNUUjdXeupXZNa9d3AmaCZUVsKMtFE3Gz
         QnpOfL2w63p/ryjrWddMGW5PU1TZeHp9i+Atkg2GAshfENUVUqyH2ns3OBweKiKUgGZt
         oxYd1/rITXcUCoob6xY0pruy3DOniN5kvpzT694XHmVE8svnkhdMMvCHfMSJzt1rgBiw
         bVWQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+s8H4aIPbJg/2tJy6dZZPSLfNh1y+HCliQFRszkOvao=;
        b=dDrP5tZrB6Rcg2BOh9+AMdt2PmkbMLWPHKWhA3vxSbLQHofEMKi/MRn6kdn4VpZS5D
         pBCRX7ybeIdCTX0NIdq90OWlT43FtwgogqRfnsCDYIftUiDCO05zVGYZPLfOOU4so3bs
         4w3khtr+rFeD62VfbW5W6V63udRvqAi2HMvxH84bSuPA/c6DvBXwwoQfvQSs1hxzQT4W
         2zNnAFMrkBx47pdP0xO7t4zONGGzzCWdD+aB5HZ5dgas9cXFNxrLTse1eYBzwGmPQ5R0
         9FZNy7yI4q22kpdEK4+0V+SlbKHEtuKFNSr3SeiDHk18UrtYqdthcZkqokyZgjXgiV+i
         EQXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+s8H4aIPbJg/2tJy6dZZPSLfNh1y+HCliQFRszkOvao=;
        b=XUnrTUSkuEGJLzoSyBix2HoliMVkrRonVVgdthkuJGNcXSHCO9qQZr6Zm7qK51ucYV
         L2k5W2E6MtyCi/MddL/IBLk6KiybbBq9pneeiJVvNOci/cvAQZ+kKZFSva2aSFX/gbpZ
         5GklgDlakAfeQi/9+uobYm4k4K5RvFF6lN+1301RrAtQzkApL9EHilhgwXijiJZnu5Cg
         rQ5JfzcGkezHyyuffZW/PwMbIlakMTTbyy0LQsFgaxrZ/cTS9gz2tVFmOpKIG/JnvPqE
         s0eCTQUynlMoZTREPKfdUuHAkbmVDoDgZVRCUJwohaLbLXIBCl0taEofhvadXagjI+Rj
         EtkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533AEpxR3OwuUsLVRUYP/d7wemCnp6WhlApdKb2X8RbSOWYBUojj
	McRTUfPCnn+xVpbNGy4jt0k=
X-Google-Smtp-Source: ABdhPJySwY29UL/wQg+lO/VYgApTHgs7vH0FM/fNXtqN3Wp6UFAz2pBz8Blao265ZimWPkPN53FVqA==
X-Received: by 2002:a17:906:3ac3:: with SMTP id z3mr1637246ejd.449.1609906314497;
        Tue, 05 Jan 2021 20:11:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8a9b:: with SMTP id j27ls1899714edj.3.gmail; Tue, 05 Jan
 2021 20:11:53 -0800 (PST)
X-Received: by 2002:a05:6402:407:: with SMTP id q7mr2656973edv.312.1609906313782;
        Tue, 05 Jan 2021 20:11:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609906313; cv=none;
        d=google.com; s=arc-20160816;
        b=TxUkeY6H7G0+DBujj5qstfmGL23xxEIGt/tnkY4kRkEb/MN5tyrt8BgbW5EdZ5K1i/
         kkSa78EljkRLcXoPZe0L5eMswwEilqCZgRYTlqqrfcZHgTPrJbGtEVXmV8u5nEAU4bSB
         V7628Ab9ahTCpZj8CHeQl/4S9T+2zSY/ZuDCLQekk1FLCT8IXu6/DDLqRnpvNF76TqgI
         skcvvuzhzPwEu+BWqKHVZeiy62KiEl9XB0OlCQgF+nIZWkpD5B8KSF7Z8/Ia1GYtlAgx
         5MdXNwmPL9bVT4l+kDL9dHzjODZOEyzGj+5zo7k0OMQobr+EzUjBmiXblTesE09ixerD
         Reag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BhqmsY59ya3fHfoXcrewe93ktRT6SVmBebPAVLSKui4=;
        b=zJMc3BRgO3mZC6fc1isVq0Uo7WHTkNgf61RFPb7eZgmm7mNLNqrGgLu1N0aaLRit/l
         rnIIIf6trpvKCixEGTk9XOSz+uNOzh3iu9hKHL0UB61jyEac2Iu5OhLOSB6IA+xLzz4M
         6uoQwleDswiYJFXqIrS9B4KFkbRRDCtnNGgelzfDKrLo9xgbztNIzNR1zljUsY0m1ilj
         JjXFUIgvTmsqDn9aVnTK1o+Yu0MW6vmjxxInvY8ovLecsVuKcq9+0Uxv7WbFBBNQSVPS
         7F3Na7GpVIVgWCqHIFnaJQrVWDEOwXA7/ncaTgak14Y9nVjyPr6jT3qUHAlHYxYuaXfz
         Oa9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PoCO6p8G;
       spf=pass (google.com: domain of smfrench@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=smfrench@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id d9si58567edr.1.2021.01.05.20.11.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 20:11:53 -0800 (PST)
Received-SPF: pass (google.com: domain of smfrench@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id a12so3674225lfl.6
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 20:11:53 -0800 (PST)
X-Received: by 2002:ac2:5547:: with SMTP id l7mr1064627lfk.313.1609906313402;
 Tue, 05 Jan 2021 20:11:53 -0800 (PST)
MIME-Version: 1.0
References: <20210105202126.2879650-1-trix@redhat.com> <20210105222559.GA4118247@ubuntu-m3-large-x86>
In-Reply-To: <20210105222559.GA4118247@ubuntu-m3-large-x86>
From: Steve French <smfrench@gmail.com>
Date: Tue, 5 Jan 2021 22:11:41 -0600
Message-ID: <CAH2r5mu-C3v-Tuz5E8nAFepSiCyypvw0g4ctTt2fjx1vEb9a_A@mail.gmail.com>
Subject: Re: [PATCH] cifs: check pointer before freeing
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: trix@redhat.com, Steve French <sfrench@samba.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, =?UTF-8?Q?Aur=C3=A9lien_Aptel?= <aaptel@suse.com>, 
	Paulo Alcantara <palcantara@suse.de>, CIFS <linux-cifs@vger.kernel.org>, 
	samba-technical <samba-technical@lists.samba.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: smfrench@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PoCO6p8G;       spf=pass
 (google.com: domain of smfrench@gmail.com designates 2a00:1450:4864:20::136
 as permitted sender) smtp.mailfrom=smfrench@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

merged into cifs-2.6.git for-next and added cc:stable

On Tue, Jan 5, 2021 at 5:08 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, Jan 05, 2021 at 12:21:26PM -0800, trix@redhat.com wrote:
> > From: Tom Rix <trix@redhat.com>
> >
> > clang static analysis reports this problem
> >
> > dfs_cache.c:591:2: warning: Argument to kfree() is a constant address
> >   (18446744073709551614), which is not memory allocated by malloc()
> >         kfree(vi);
> >         ^~~~~~~~~
> >
> > In dfs_cache_del_vol() the volume info pointer 'vi' being freed
> > is the return of a call to find_vol().  The large constant address
> > is find_vol() returning an error.
> >
> > Add an error check to dfs_cache_del_vol() similar to the one done
> > in dfs_cache_update_vol().
> >
> > Fixes: 54be1f6c1c37 ("cifs: Add DFS cache routines")
> > Signed-off-by: Tom Rix <trix@redhat.com>
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>
> > ---
> >  fs/cifs/dfs_cache.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/fs/cifs/dfs_cache.c b/fs/cifs/dfs_cache.c
> > index 6ad6ba5f6ebe..0fdb0de7ff86 100644
> > --- a/fs/cifs/dfs_cache.c
> > +++ b/fs/cifs/dfs_cache.c
> > @@ -1260,7 +1260,8 @@ void dfs_cache_del_vol(const char *fullpath)
> >       vi = find_vol(fullpath);
> >       spin_unlock(&vol_list_lock);
> >
> > -     kref_put(&vi->refcnt, vol_release);
> > +     if (!IS_ERR(vi))
> > +             kref_put(&vi->refcnt, vol_release);
> >  }
> >
> >  /**
> > --
> > 2.27.0
> >



-- 
Thanks,

Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAH2r5mu-C3v-Tuz5E8nAFepSiCyypvw0g4ctTt2fjx1vEb9a_A%40mail.gmail.com.
