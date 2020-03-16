Return-Path: <clang-built-linux+bncBDYZDG4VSMIRBTEZXXZQKGQEUSUY5CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 788CB18683F
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 10:54:21 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id u11sf6404462lff.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 02:54:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584352461; cv=pass;
        d=google.com; s=arc-20160816;
        b=qWboTZMJAYm7qGL7s2/BweZSZYkNhbJUUqqL4fyBESO/0bHB64FOlC+IY5U22gfG/w
         mRAWlIWNydyae3BLx0ptXkTrsXOCnQGYt262/8c2MmA5PE3pSe0vdda7aCcVPUclZBRh
         DgZtz+tHqxTwFT0tovNRhX0rhfL9TBGEpIr1JkmBDj7658DWYc6hGKR8K892c0qUv8uZ
         C/FJLr8omMUo/kSwoXX/T5kIMlPioptTVATG/psUCcC+G2WeqJaj+JNLnd6mpUhNJheZ
         c4gTG0kGYoVgJOH7HH0LlrCPX20e+PGVDBpaszoAtBaM7cZhDFx2WpzQPkAKBs8QdkHJ
         fPww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:mail-followup-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=PY8UGfHkKKkIQjs5YV7DPntA3PXMvzDAHlZl1GUOsNk=;
        b=mvPBAsJgNCk3JjZlE/zG8L4wXEJlEoyO8l9WgLfvOTqyp+OGL+JMofmivW4TecfK9V
         Ki5+dgETID/LpNdr74e0zGOtdB/bVZx4CiYM/I3Ag2oBpOsasVZgbDn19hStZHnPscz2
         Ap+kBRuE5XR8lYQsWq5eYsMt8QyWAhPNjtbP2vs86Om3wYBUSIa8jeZ4Ex/kMn58Lavo
         rm4vIjtLrMWUDNTGCy2g5PdpHdyZ1ULfh9iDVApE6UmHHk+7zq1ge/9IZH450rLIcJFm
         G0DyfLJAn+sUWNQfhmFeQciQXQKsMjUa/KqizXlZfSQi33LC6bkCbElfNHS/a4QuZJLG
         AVeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=RRRaKsZu;
       spf=neutral (google.com: 2a00:1450:4864:20::441 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PY8UGfHkKKkIQjs5YV7DPntA3PXMvzDAHlZl1GUOsNk=;
        b=gd0FHAbElk/tsqepdCZNfzuADgwSLuAhmK/TV9RrcmkUCmpnvrI8hfBtEfme7APsVd
         cWpxsSKjgKYFEgWLAWRAa0XumKKlKwpZxmpZPI/Vx+Ls3zonVTpbW9EUA/tiry1bBYqw
         hjL0dDRUtal/aU72rqzGxM4iPa/5zl/l/WcYnQv/ZiF6TNkRYxRLIsDM1HkM7qq0b/PG
         7/FVWzkmMNj1Mp/9VdP1ErgdwdUTxMTeK2CgX6uFKqBHoF7YWuQWXGmQEEJUmDmHERFs
         lG3ULsatIFmb+NnWe4DdYID3s8t7+y+/MmVrKe+k4AMegkFWblE4q7Gm13XY6R29WmXY
         fmjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PY8UGfHkKKkIQjs5YV7DPntA3PXMvzDAHlZl1GUOsNk=;
        b=gSGHou7h+VFN+WCQUYrvu6O91Y24hL7h5rF+A3lFgaDOFjy/xYnAucouWjtSlDlPP+
         wWwFgsfpoC9FPh2x3qhHA1PhVe4wcaJagJuLy/L15OAcDCAotcSKApBYfwap9zNns6FG
         QYI8oBPgDNIlSmJl+sU3CYV+3YNJ+tMBYBUWLJjJS4B3G/2PzM3obtt/HsAB05vK70Oa
         YVIeBJoBTpkr1/H9W+lozm1KOp+7ixx893J/49T3PAhx1rcgQlhS6PuS28tgzAzrWafm
         QNe8vQg0/BAFcJaXeywAfqIyeiUYDiuTgQjK4kD1Kvj5JKSh56Xrk/bSJtSLOTsMWAUA
         bnXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2t76TOb89cnaPR7JInFiE30bcjAlcDWsH4CRbC9D+s7AaFzF3g
	pxecfsbp+THQ8R45UZBTJWQ=
X-Google-Smtp-Source: ADFU+vvgi7SBnjdT8m+VB7X3SOspRQM3dU6Rv8b3TGTCmXR6PqDsbW54C7d/SRclBNAulj2OOxAMdQ==
X-Received: by 2002:a2e:9ccb:: with SMTP id g11mr5484370ljj.271.1584352461002;
        Mon, 16 Mar 2020 02:54:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:41d5:: with SMTP id d21ls992059lfi.11.gmail; Mon, 16 Mar
 2020 02:54:20 -0700 (PDT)
X-Received: by 2002:ac2:50c4:: with SMTP id h4mr16184117lfm.138.1584352460402;
        Mon, 16 Mar 2020 02:54:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584352460; cv=none;
        d=google.com; s=arc-20160816;
        b=nGP2WtOH7HYDxPw+L/D10J/TNLejgedzkacV16zPF14jXo1dBxvG+CnfD9/Xi//wIL
         +ErbLAYOntHedjhsuosuxUgiaLr7jB180xMGspgO4hvFIus7RIBdhwgxchqG9DHvqWvK
         7pVmtbxcIl1iZJOGy9GCrDQOyGsfqaNq0aZGn/Xt1jClLyqso57JgYB0iCeVUhWHUEpl
         qNBww8Ew8l8HokMnxqTBNNTIMlSHMtE2ry9PKKU/dK0ShWUtcg328qIe0iVx2cbc6ukq
         botLyJAHaLrqXrum6gCojraEUeva6QHZVI6fJr24YYvziXxP/BCXi8gvdVyTskpEH5wt
         oLsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:dkim-signature;
        bh=zSC6oywTzGEcsERVAal6BgbGEUVylhtga/Ve0wR+QRc=;
        b=yZnRV5gdcH7/qrWV8h7wRIGR/+aMqXJsEnOccBCXLgpWBe8woIoPRyKtUD/WeKFbIx
         +9C7QlicMrCW6+vAQf+e+Ucrv6pRfF5O8GbAxCeq5DTLZ+eKYhfQUNaNl4ASzlZc+NuK
         lQvsk8/PpXvoL5Ex9mCFRDlRTk3JjniltUuK4hBF41odPGyLs1lsITnXshkR0wLVWrTd
         pk/8N5+sgE0csOy0aRj9uVvRCqw20YEfgH0q2HplxaxN30u+VtnhkkLbZhU6eyFX3ngO
         o/cvN4BqUA0BH85reGFSCE/elR/Tfxcjs1tTxtautjdqMSmfhRKwy+dIh5q8bYcRCcp+
         d59Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=RRRaKsZu;
       spf=neutral (google.com: 2a00:1450:4864:20::441 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id j11si662913lfe.4.2020.03.16.02.54.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 02:54:20 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::441 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id y2so4836244wrn.11
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 02:54:20 -0700 (PDT)
X-Received: by 2002:a5d:480a:: with SMTP id l10mr1681118wrq.178.1584352459668;
        Mon, 16 Mar 2020 02:54:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id a186sm29813829wmh.33.2020.03.16.02.54.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 02:54:18 -0700 (PDT)
Date: Mon, 16 Mar 2020 10:54:17 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Kees Cook <keescook@chromium.org>
Cc: Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] drm/edid: Distribute switch variables for
 initialization
Message-ID: <20200316095417.GJ2363188@phenom.ffwll.local>
Mail-Followup-To: Kees Cook <keescook@chromium.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
References: <202003060930.DDCCB6659@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <202003060930.DDCCB6659@keescook>
X-Operating-System: Linux phenom 5.3.0-3-amd64
X-Original-Sender: daniel@ffwll.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ffwll.ch header.s=google header.b=RRRaKsZu;       spf=neutral
 (google.com: 2a00:1450:4864:20::441 is neither permitted nor denied by best
 guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
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

On Fri, Mar 06, 2020 at 09:32:13AM -0800, Kees Cook wrote:
> Variables declared in a switch statement before any case statements
> cannot be automatically initialized with compiler instrumentation (as
> they are not part of any execution flow). With GCC's proposed automatic
> stack variable initialization feature, this triggers a warning (and they
> don't get initialized). Clang's automatic stack variable initialization
> (via CONFIG_INIT_STACK_ALL=3Dy) doesn't throw a warning, but it also
> doesn't initialize such variables[1]. Note that these warnings (or silent
> skipping) happen before the dead-store elimination optimization phase,
> so even when the automatic initializations are later elided in favor of
> direct initializations, the warnings remain.
>=20
> To avoid these problems, lift such variables up into the next code
> block.
>=20
> drivers/gpu/drm/drm_edid.c: In function =E2=80=98drm_edid_to_eld=E2=80=99=
:
> drivers/gpu/drm/drm_edid.c:4395:9: warning: statement will never be
> executed [-Wswitch-unreachable]
>  4395 |     int sad_count;
>       |         ^~~~~~~~~
>=20
> [1] https://bugs.llvm.org/show_bug.cgi?id=3D44916
>=20
> Signed-off-by: Kees Cook <keescook@chromium.org>

Thanks for your patch, applied to drm-misc-next.
-Daniel

> ---
> v2: move into function block instead being switch-local (Ville Syrj=C3=A4=
l=C3=A4)
> ---
>  drivers/gpu/drm/drm_edid.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> index 805fb004c8eb..46cee78bc175 100644
> --- a/drivers/gpu/drm/drm_edid.c
> +++ b/drivers/gpu/drm/drm_edid.c
> @@ -4381,6 +4381,7 @@ static void drm_edid_to_eld(struct drm_connector *c=
onnector, struct edid *edid)
> =20
>  	if (cea_revision(cea) >=3D 3) {
>  		int i, start, end;
> +		int sad_count;
> =20
>  		if (cea_db_offsets(cea, &start, &end)) {
>  			start =3D 0;
> @@ -4392,8 +4393,6 @@ static void drm_edid_to_eld(struct drm_connector *c=
onnector, struct edid *edid)
>  			dbl =3D cea_db_payload_len(db);
> =20
>  			switch (cea_db_tag(db)) {
> -				int sad_count;
> -
>  			case AUDIO_BLOCK:
>  				/* Audio Data Block, contains SADs */
>  				sad_count =3D min(dbl / 3, 15 - total_sad_count);
> --=20
> 2.20.1
>=20
>=20
> --=20
> Kees Cook

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200316095417.GJ2363188%40phenom.ffwll.local.
