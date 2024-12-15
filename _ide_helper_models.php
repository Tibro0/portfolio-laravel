<?php

// @formatter:off
// phpcs:ignoreFile
/**
 * A helper file for your Eloquent Models
 * Copy the phpDocs from this file to the correct Model,
 * And remove them from this file, to prevent double declarations.
 *
 * @author Barry vd. Heuvel <barryvdh@gmail.com>
 */


namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property string $key
 * @property string|null $value
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Information newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Information newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Information query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Information whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Information whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Information whereKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Information whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Information whereValue($value)
 */
	class Information extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property string $years
 * @property string $course_name
 * @property string $company_name
 * @property string $description
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MyEducation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MyEducation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MyEducation query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MyEducation whereCompanyName($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MyEducation whereCourseName($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MyEducation whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MyEducation whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MyEducation whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MyEducation whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MyEducation whereYears($value)
 */
	class MyEducation extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property string $years
 * @property string $title
 * @property string $company_name
 * @property string $description
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MyExperience newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MyExperience newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MyExperience query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MyExperience whereCompanyName($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MyExperience whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MyExperience whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MyExperience whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MyExperience whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MyExperience whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MyExperience whereYears($value)
 */
	class MyExperience extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property string $icon
 * @property string $icon_name
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MySkill newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MySkill newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MySkill query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MySkill whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MySkill whereIcon($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MySkill whereIconName($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MySkill whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MySkill whereUpdatedAt($value)
 */
	class MySkill extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property string $image
 * @property string $title
 * @property string $description
 * @property string $language
 * @property string $live_link
 * @property string $github_link
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Portfolio newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Portfolio newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Portfolio query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Portfolio whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Portfolio whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Portfolio whereGithubLink($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Portfolio whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Portfolio whereImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Portfolio whereLanguage($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Portfolio whereLiveLink($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Portfolio whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Portfolio whereUpdatedAt($value)
 */
	class Portfolio extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property string $icon
 * @property string $url
 * @property string $title
 * @property string $description
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceSection newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceSection newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceSection query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceSection whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceSection whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceSection whereIcon($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceSection whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceSection whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceSection whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceSection whereUrl($value)
 */
	class ServiceSection extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property string $avatar
 * @property string $name
 * @property string $email
 * @property string $role
 * @property \Illuminate\Support\Carbon|null $email_verified_at
 * @property string $password
 * @property string|null $remember_token
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection<int, \Illuminate\Notifications\DatabaseNotification> $notifications
 * @property-read int|null $notifications_count
 * @method static \Database\Factories\UserFactory factory($count = null, $state = [])
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereAvatar($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereEmailVerifiedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereRememberToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereRole($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereUpdatedAt($value)
 */
	class User extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @method static \Illuminate\Database\Eloquent\Builder<static>|UserInformation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|UserInformation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|UserInformation query()
 */
	class UserInformation extends \Eloquent {}
}

