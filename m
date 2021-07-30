Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBY5NR2EAMGQEVDTN72I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C8E3DB32A
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 08:06:29 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id k16-20020a170902ba90b029012c06f217cdsf7008640pls.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 23:06:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627625188; cv=pass;
        d=google.com; s=arc-20160816;
        b=pL3Npk9DY+/zU2ljnRok3NtrSnuz8yz9q8u8pRBNgv9TXk9UcxEshG/ydAzhsoSWRc
         JcTa1uIZQzdAdkWy/KDPvaC9SDYOPTdHr3A2m/3fYwnsNDCb5etyZeLcuNb/PsZ6891/
         +c9j/VSTrCDSAp7aqExktmbniOWLkORSF38B/pHu7rdLwrqscsSgcHryyrQgS0zsoHiG
         Bdi3wOwUMmrwWZOQoR4ZQ1eWOeD6bzC33H+jSfxFuvs5OIrLV2y2g5dUdHxoOJSG3Eic
         L/qvRjd7swsNNG1uaJQiFyJECa9v28o3zHcwvJ5QMzNYU38mBQ8kgYjl2THlX+vBqeNo
         CQAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender
         :dkim-signature;
        bh=QOnFJNZDvFrekgPtzBfYdeoFY4Y6LecWHNraBhM1g+I=;
        b=HB7AkkZt2uxeWaZ576MosLQkN+IBunD8len5mvT1BD2OLQjLBCqS8M02YRS2wL2iVd
         RbalxE86QhBUz5lG5a7P6NFHYrE5VxGb0/afxht/5hEP8yDZZ2nE4kWUSSq+p906CDDB
         DbJp7wVHQ2CPYjOBfFrev9Mwy8YQR9QNRFQf0pLxOMdKF5LkQT+Iai/jzHGePJ0facT2
         x/CT5zTUMpFhCNlqcDkoZqqhCm7KJuAUckh5Wjdnmqjf9Ba0gMEm1l+7KMWOmUaL9gZo
         1PjzKTtFo1/qTK6ifCaWDXfLP0hUy0tm83Pg5I9I6oMN7eGc7YnPVVBGirK7IisoM82o
         2eCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lIobNunj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QOnFJNZDvFrekgPtzBfYdeoFY4Y6LecWHNraBhM1g+I=;
        b=ryrrHvXlI4K9Yb0AxcfYALaFrTCV3XIZ9c0E4w/g8Y3wr2wawc+yrrhpqhlcHymot2
         JSvI8PWTYl/28evrJmAUCTUeKsUxT6oro9oazTJjGGBBkU/8TO53DImq+ivNjQJLhDM9
         DtIxVuAnHsFJ0WXyAWgubmkdLyA19RppwOFgqaoQWQ5mjRBLZ7tKzq9YGrk+/YDrrA8+
         z226JrIKod99tXTLoKIAgXoK8O/WSCzKVNhmTugwmVZ69zXImZ4DISKy9TRXn8nigPkv
         x8Z4op+9bIwicS+Lh3waGSYUg16wH18iDE4EfBI0cU5KHB47grVDJyj7RWq0rZQINajy
         N9DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QOnFJNZDvFrekgPtzBfYdeoFY4Y6LecWHNraBhM1g+I=;
        b=tOIKeJEwEideZvnskfWxS4K2/cJXf0QpF/vLkhQOLbaJOh6EVqz8HRELXnDXr3Q3wD
         pm+DosjrjBG9lPkR0vK5E0vX4gBcHYfyaqGV3zUDEayTzwxf5ZTrnsZjnuc6Z1TlEZTm
         ncODoIh8uUtJfT7avvajA2ohSIKTGdAJurnlnwrG4GMqeah0hKWpTMAIPA1Jsp01wfIN
         2Ec+0w4Qoorn0407HLGToMY5NnajH8Xz0EvbpMM4z2C17742ym2t3UlA/WZDqWXl9n+G
         git4f50QqKj8iQAgsPo8skg0VG7M3ndRzvMgv9XzSijEpJU8YhjfIA8rzHollT/PoEb1
         ejwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530M8BAcBC72UlYzrCMt3IcYehHx39LYb//Cm0o0f72h5OR2YfrL
	Y76mcwqnth6P5TFVb7dJL50=
X-Google-Smtp-Source: ABdhPJw2mzJan8X5UWTkA+UL8EQRhq/enOZsErtujGNeUpsw2E8+WJhSorsEPzXl9OnzvIS/Gbjnrg==
X-Received: by 2002:a17:902:ea02:b029:12c:916f:ff1f with SMTP id s2-20020a170902ea02b029012c916fff1fmr956749plg.45.1627625187862;
        Thu, 29 Jul 2021 23:06:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:564d:: with SMTP id g13ls324806pgm.1.gmail; Thu, 29 Jul
 2021 23:06:27 -0700 (PDT)
X-Received: by 2002:a65:4242:: with SMTP id d2mr851786pgq.243.1627625187236;
        Thu, 29 Jul 2021 23:06:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627625187; cv=none;
        d=google.com; s=arc-20160816;
        b=FT5tqmqmvwoUh2tv05ns8WQaHuFqka/s/wpqvIC3AsUMVZ1hISsSH0fYPzRR5oyHLa
         cjqMshmtisWvO4OTBVYjMMqTeg6Fem5RT405+aYDivZ/uX214bra7b7a/8WIsV9db6Zb
         pUuUFeZT70qd6P1Shcll4fG8MZohW5mrUTji+i5ccA/Q4L6u7P4GXIkY5kAKoj0ctMKM
         IFc5yA2OMDTE5d94Lzbowz28/KcXdoKDIptGFI8DjwBMXgZSL05V0hQS2i7j/6m2KNuC
         YrSvx9ITVZkrMXWulYB5vcYwAEWUVCnuc3YOFuIZjfcPDczxK3r+2GLl2+Ebq1oRV+vl
         k6sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:dkim-signature;
        bh=IesK2FI21HpbnxZx4yJeBJ/OA9fhmSX4VPo4yVAWFag=;
        b=Eobk78dxEaSVvaW/HVuM8MNahT4ITnSuhK6+OJgjNsXpLmq28jpJwEfrI73fwTC+/v
         2zThhEUSIdOGnWtsjs1cwMsChr1ayzgZ1L5WpVLIZV/kHzMgwu7BPFoAAFKtHdfjdWAD
         PAN0iCt7S4pcUQZMa/kz7+3qSwO3UE6tKPGJfxYVoNDgItXYL9ABpBhn30pc4upt7TDy
         uf0kltOiChEVKtUshU9o/PuuwtKPgP1tqWUAl2FqoE6TY6ioewE3OIlkIBUJd4r/5iUP
         m/tSgKcJ+t/A/pHIwRQu/SEeKbYa7HuSuUn7QmmWoiXFoEAmIlmUks+9bIgxpF+zTfRL
         P8YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lIobNunj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id 14si78513pjd.0.2021.07.29.23.06.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 23:06:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id a20so9891226plm.0
        for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 23:06:27 -0700 (PDT)
X-Received: by 2002:a17:902:aa89:b029:12c:17dc:43b0 with SMTP id d9-20020a170902aa89b029012c17dc43b0mr1167657plr.81.1627625186985;
        Thu, 29 Jul 2021 23:06:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id nl2sm714675pjb.10.2021.07.29.23.06.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 23:06:26 -0700 (PDT)
Date: Thu, 29 Jul 2021 23:06:25 -0700
From: Kees Cook <keescook@chromium.org>
To: dsterba@suse.cz, Dan Carpenter <dan.carpenter@oracle.com>,
	linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 02/64] mac80211: Use flex-array for radiotap header bitmap
Message-ID: <202107292305.DB86BAC@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-3-keescook@chromium.org>
 <20210728073556.GP1931@kadam>
 <20210728092323.GW5047@twin.jikos.cz>
 <202107281454.F96505E15@keescook>
 <20210729104547.GT5047@suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210729104547.GT5047@suse.cz>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=lIobNunj;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Jul 29, 2021 at 12:45:47PM +0200, David Sterba wrote:
> On Wed, Jul 28, 2021 at 02:54:52PM -0700, Kees Cook wrote:
> > On Wed, Jul 28, 2021 at 11:23:23AM +0200, David Sterba wrote:
> > > On Wed, Jul 28, 2021 at 10:35:56AM +0300, Dan Carpenter wrote:
> > > > @@ -372,7 +372,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
> > > >  			ieee80211_calculate_rx_timestamp(local, status,
> > > >  							 mpdulen, 0),
> > > >  			pos);
> > > > -		rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_TSFT);
> > > > +		rthdr->data.it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_TSFT);
> > > 
> > > A drive-by comment, not related to the patchset, but rather the
> > > ieee80211 driver itself.
> > > 
> > > Shift expressions with (1 << NUMBER) can be subtly broken once the
> > > NUMBER is 31 and the value gets silently cast to a 64bit type. It will
> > > become 0xfffffffff80000000.
> > > 
> > > I've checked the IEEE80211_RADIOTAP_* defintions if this is even remotely
> > > possible and yes, IEEE80211_RADIOTAP_EXT == 31. Fortunatelly it seems to
> > > be used with used with a 32bit types (eg. _bitmap_shifter) so there are
> > > no surprises.
> > > 
> > > The recommended practice is to always use unsigned types for shifts, so
> > > "1U << ..." at least.
> > 
> > Ah, good catch! I think just using BIT() is the right replacement here,
> > yes? I suppose that should be a separate patch.
> 
> I found definition of BIT in vdso/bits.h, that does not sound like a
> standard header, besides that it shifts 1UL, that may not be necessary
> everywhere. IIRC there were objections against using the macro at all.

3945ff37d2f4 ("linux/bits.h: Extract common header for vDSO") moved it
there from linux/bits.h, and linux/bits.h now includes vdso/bits.h, so
it is still ever-present. :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107292305.DB86BAC%40keescook.
